# classes2.dex

.class public final synthetic Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/TvInputManager$HardwareCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$4;->lambda$onReleased$0(Landroid/media/tv/TvInputManager$HardwareCallback;)V

    return-void
.end method
