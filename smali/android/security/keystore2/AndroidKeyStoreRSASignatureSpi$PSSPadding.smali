# classes3.dex

.class abstract Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PSSPadding"
.end annotation


# static fields
.field private static final SALT_LENGTH_BYTES:I = 0x14


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final getAdditionalEntropyAmountForSign()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method