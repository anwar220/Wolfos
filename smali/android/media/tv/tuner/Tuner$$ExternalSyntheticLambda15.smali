# classes2.dex

.class public final synthetic Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Tuner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;->f$0:Landroid/media/tv/tuner/Tuner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;->f$0:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Tuner;->lambda$onUnlocked$3$android-media-tv-tuner-Tuner()V

    return-void
.end method
