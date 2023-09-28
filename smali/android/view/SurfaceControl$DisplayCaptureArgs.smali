# classes3.dex

.class public Landroid/view/SurfaceControl$DisplayCaptureArgs;
.super Landroid/view/SurfaceControl$CaptureArgs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final mDisplayToken:Landroid/os/IBinder;

.field private final mHeight:I

.field private final mUseIdentityTransform:Z

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V

    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmDisplayToken(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmWidth(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mWidth:I

    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmHeight(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mHeight:I

    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmUseIdentityTransform(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mUseIdentityTransform:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;Landroid/view/SurfaceControl$DisplayCaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs;-><init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)V

    return-void
.end method
