# classes.dex

.class Landroid/hardware/camera2/impl/CameraMetadataNative$33;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/camera2/impl/SetCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "TT;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->-$$Nest$msetAWBRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z

    return-void
.end method
