# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;-><init>(I)V

    return-void
.end method