# classes3.dex

.class public final synthetic Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/service/appprediction/AppPredictionService;

    check-cast p2, Landroid/app/prediction/AppPredictionContext;

    check-cast p3, Landroid/app/prediction/AppPredictionSessionId;

    invoke-static {p1, p2, p3}, Landroid/service/appprediction/AppPredictionService$1;->lambda$onCreatePredictionSession$0(Ljava/lang/Object;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method
