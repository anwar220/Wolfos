# classes3.dex

.class public final synthetic Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Landroid/view/Display;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Landroid/view/Display;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;->f$1:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;->f$1:Landroid/view/Display;

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControlViewHost;->lambda$addConfigCallback$0(Landroid/os/IBinder;Landroid/view/Display;Landroid/content/res/Configuration;)V

    return-void
.end method
