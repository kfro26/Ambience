// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package g5.ambience.web.ui;

import g5.ambience.BundleEntity;
import g5.ambience.BundleEntityPK;
import g5.ambience.ItemEntity;
import g5.ambience.UserEntity;
import g5.ambience.web.ui.ApplicationConversionServiceFactoryBean;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<BundleEntity, String> ApplicationConversionServiceFactoryBean.getBundleEntityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<g5.ambience.BundleEntity, java.lang.String>() {
            public String convert(BundleEntity bundleEntity) {
                return new StringBuilder().append(bundleEntity.getUserRating()).append(" ").append(bundleEntity.getReturnedDate()).toString();
            }
        };
    }
    
    public Converter<BundleEntityPK, BundleEntity> ApplicationConversionServiceFactoryBean.getIdToBundleEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<g5.ambience.BundleEntityPK, g5.ambience.BundleEntity>() {
            public g5.ambience.BundleEntity convert(g5.ambience.BundleEntityPK id) {
                return BundleEntity.findBundleEntity(id);
            }
        };
    }
    
    public Converter<String, BundleEntity> ApplicationConversionServiceFactoryBean.getStringToBundleEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, g5.ambience.BundleEntity>() {
            public g5.ambience.BundleEntity convert(String id) {
                return getObject().convert(getObject().convert(id, BundleEntityPK.class), BundleEntity.class);
            }
        };
    }
    
    public Converter<ItemEntity, String> ApplicationConversionServiceFactoryBean.getItemEntityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<g5.ambience.ItemEntity, java.lang.String>() {
            public String convert(ItemEntity itemEntity) {
                return new StringBuilder().append(itemEntity.getTitle()).append(" ").append(itemEntity.getReleaseYear()).append(" ").append(itemEntity.getType()).append(" ").append(itemEntity.getPlatform()).toString();
            }
        };
    }
    
    public Converter<Integer, ItemEntity> ApplicationConversionServiceFactoryBean.getIdToItemEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, g5.ambience.ItemEntity>() {
            public g5.ambience.ItemEntity convert(java.lang.Integer id) {
                return ItemEntity.findItemEntity(id);
            }
        };
    }
    
    public Converter<String, ItemEntity> ApplicationConversionServiceFactoryBean.getStringToItemEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, g5.ambience.ItemEntity>() {
            public g5.ambience.ItemEntity convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), ItemEntity.class);
            }
        };
    }
    
    public Converter<UserEntity, String> ApplicationConversionServiceFactoryBean.getUserEntityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<g5.ambience.UserEntity, java.lang.String>() {
            public String convert(UserEntity userEntity) {
                return new StringBuilder().append(userEntity.getEmail()).append(" ").append(userEntity.getPasswordHash()).append(" ").append(userEntity.getMembershipPlan()).append(" ").append(userEntity.getDob()).toString();
            }
        };
    }
    
    public Converter<String, UserEntity> ApplicationConversionServiceFactoryBean.getIdToUserEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, g5.ambience.UserEntity>() {
            public g5.ambience.UserEntity convert(java.lang.String id) {
                return UserEntity.findUserEntity(id);
            }
        };
    }
    
    public Converter<String, BundleEntityPK> ApplicationConversionServiceFactoryBean.getJsonToBundleEntityPKConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, g5.ambience.BundleEntityPK>() {
            public BundleEntityPK convert(String encodedJson) {
                return BundleEntityPK.fromJsonToBundleEntityPK(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<BundleEntityPK, String> ApplicationConversionServiceFactoryBean.getBundleEntityPKToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<g5.ambience.BundleEntityPK, java.lang.String>() {
            public String convert(BundleEntityPK bundleEntityPK) {
                return Base64.encodeBase64URLSafeString(bundleEntityPK.toJson().getBytes());
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBundleEntityToStringConverter());
        registry.addConverter(getIdToBundleEntityConverter());
        registry.addConverter(getStringToBundleEntityConverter());
        registry.addConverter(getItemEntityToStringConverter());
        registry.addConverter(getIdToItemEntityConverter());
        registry.addConverter(getStringToItemEntityConverter());
        registry.addConverter(getUserEntityToStringConverter());
        registry.addConverter(getIdToUserEntityConverter());
        registry.addConverter(getJsonToBundleEntityPKConverter());
        registry.addConverter(getBundleEntityPKToJsonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
