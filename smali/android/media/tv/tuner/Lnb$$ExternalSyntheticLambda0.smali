# classes2.dex

.class public final synthetic Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Lnb;

.field public final synthetic f$1:Landroid/media/tv/tuner/LnbCallback;

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/tuner/Lnb;

    iput-object p2, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;->f$1:Landroid/media/tv/tuner/LnbCallback;

    iput-object p3, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/tuner/Lnb;

    iget-object v1, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;->f$1:Landroid/media/tv/tuner/LnbCallback;

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;->f$2:[B

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tuner/Lnb;->lambda$onDiseqcMessage$1$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;[B)V

    return-void
.end method
