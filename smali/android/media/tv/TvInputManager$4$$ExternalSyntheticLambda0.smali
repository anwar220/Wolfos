# classes2.dex

.class public final synthetic Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

.field public final synthetic f$1:[Landroid/media/tv/TvStreamConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;->f$1:[Landroid/media/tv/TvStreamConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;->f$1:[Landroid/media/tv/TvStreamConfig;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$4;->lambda$onStreamConfigChanged$1(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V

    return-void
.end method
