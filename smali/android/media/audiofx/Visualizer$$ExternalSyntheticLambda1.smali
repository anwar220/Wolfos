# classes2.dex

.class public final synthetic Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/audiofx/Visualizer;


# direct methods
.method public synthetic constructor <init>(Landroid/media/audiofx/Visualizer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;->f$0:Landroid/media/audiofx/Visualizer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;->f$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v0}, Landroid/media/audiofx/Visualizer;->lambda$postEventFromNative$1(Landroid/media/audiofx/Visualizer;)V

    return-void
.end method
