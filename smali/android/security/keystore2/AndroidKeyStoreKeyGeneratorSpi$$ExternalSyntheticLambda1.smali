# classes3.dex

.class public final synthetic Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$0:Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$0:Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->lambda$engineGenerateKey$1$android-security-keystore2-AndroidKeyStoreKeyGeneratorSpi(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method
