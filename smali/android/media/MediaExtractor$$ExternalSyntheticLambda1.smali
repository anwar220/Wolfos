# classes2.dex

.class public final synthetic Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/media/MediaExtractor;->lambda$getDrmInitData$1(I)[Landroid/media/DrmInitData$SchemeInitData;

    move-result-object p1

    return-object p1
.end method
