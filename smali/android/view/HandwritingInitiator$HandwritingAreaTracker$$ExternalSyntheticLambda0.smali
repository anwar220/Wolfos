# classes3.dex

.class public final synthetic Landroid/view/HandwritingInitiator$HandwritingAreaTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->lambda$computeViewInfos$0(Landroid/view/HandwritingInitiator$HandwritableViewInfo;)Z

    move-result p1

    return p1
.end method
