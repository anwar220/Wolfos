# classes.dex

.class public Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap$SizeComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)I
    .registers 7

    nop

    invoke-virtual {p1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->compareSizes(IIII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    check-cast p2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap$SizeComparator;->compare(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)I

    move-result p1

    return p1
.end method
