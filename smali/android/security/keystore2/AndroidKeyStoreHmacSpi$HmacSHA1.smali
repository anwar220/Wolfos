# classes3.dex

.class public Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA1;
.super Landroid/security/keystore2/AndroidKeyStoreHmacSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreHmacSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;-><init>(I)V

    return-void
.end method
