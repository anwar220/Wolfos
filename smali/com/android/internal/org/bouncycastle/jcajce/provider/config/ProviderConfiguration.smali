# classes4.dex

.class public interface abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAcceptableNamedCurves()Ljava/util/Set;
.end method

.method public abstract getAdditionalECParameters()Ljava/util/Map;
.end method

.method public abstract getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
.end method

.method public abstract getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
.end method

.method public abstract getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
.end method
