# classes3.dex

.class public final Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA256WithPSSPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA256withRSA/PSS"

    return-object v0
.end method
