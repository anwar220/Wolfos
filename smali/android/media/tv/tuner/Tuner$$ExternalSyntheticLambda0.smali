# classes2.dex

.class public final synthetic Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Tuner;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/tuner/Tuner;

    iput-boolean p2, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/tuner/Tuner;

    iget-boolean v1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner;->lambda$onPriorityReported$18$android-media-tv-tuner-Tuner(Z)V

    return-void
.end method
