# classes.dex

.class public final Landroid/bluetooth/BluetoothCodecStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private mCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsLocalCapabilities:Ljava/util/List;

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsSelectableCapabilities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothCodecStatus;
    .registers 5

    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/bluetooth/BluetoothCodecConfig;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public setCodecConfig(Landroid/bluetooth/BluetoothCodecConfig;)Landroid/bluetooth/BluetoothCodecStatus$Builder;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object p0
.end method

.method public setCodecsLocalCapabilities(Ljava/util/List;)Landroid/bluetooth/BluetoothCodecStatus$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)",
            "Landroid/bluetooth/BluetoothCodecStatus$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsLocalCapabilities:Ljava/util/List;

    return-object p0
.end method

.method public setCodecsSelectableCapabilities(Ljava/util/List;)Landroid/bluetooth/BluetoothCodecStatus$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)",
            "Landroid/bluetooth/BluetoothCodecStatus$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsSelectableCapabilities:Ljava/util/List;

    return-object p0
.end method
