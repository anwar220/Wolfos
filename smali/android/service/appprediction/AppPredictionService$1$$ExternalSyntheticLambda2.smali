# classes3.dex

.class public final synthetic Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/service/appprediction/AppPredictionService;

    check-cast p2, Landroid/app/prediction/AppPredictionSessionId;

    check-cast p3, Ljava/util/List;

    check-cast p4, Landroid/os/CancellationSignal;

    check-cast p5, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/service/appprediction/AppPredictionService;->onSortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Ljava/util/List;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method
