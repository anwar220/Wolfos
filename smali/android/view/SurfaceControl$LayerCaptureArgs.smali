# classes3.dex

.class public Landroid/view/SurfaceControl$LayerCaptureArgs;
.super Landroid/view/SurfaceControl$CaptureArgs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final mChildrenOnly:Z

.field private final mNativeExcludeLayers:[J

.field private final mNativeLayer:J


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V

    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmChildrenOnly(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mChildrenOnly:Z

    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v1

    iget-wide v1, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeLayer:J

    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeExcludeLayers:[J

    const/4 v0, 0x0

    :goto_22
    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeExcludeLayers:[J

    invoke-static {p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v2

    aget-object v2, v2, v0

    iget-wide v2, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_38
    goto :goto_3b

    :cond_39
    iput-object v0, p0, Landroid/view/SurfaceControl$LayerCaptureArgs;->mNativeExcludeLayers:[J

    :goto_3b
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;Landroid/view/SurfaceControl$LayerCaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs;-><init>(Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;)V

    return-void
.end method
