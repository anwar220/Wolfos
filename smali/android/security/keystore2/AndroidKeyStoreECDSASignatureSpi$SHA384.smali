# classes3.dex

.class public final Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA384;
.super Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA384withECDSA"

    return-object v0
.end method
