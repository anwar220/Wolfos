# classes2.dex

.class public final synthetic Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Lnb;

.field public final synthetic f$1:Landroid/media/tv/tuner/LnbCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/tuner/Lnb;

    iput-object p2, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$1:Landroid/media/tv/tuner/LnbCallback;

    iput p3, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/tuner/Lnb;

    iget-object v1, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$1:Landroid/media/tv/tuner/LnbCallback;

    iget v2, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tuner/Lnb;->lambda$onEvent$0$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;I)V

    return-void
.end method
