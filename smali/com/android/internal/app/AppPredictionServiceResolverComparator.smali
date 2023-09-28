# classes4.dex

.class Lcom/android/internal/app/AppPredictionServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APSResolverComparator"


# instance fields
.field private final mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

.field private final mTargetRanks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetRanks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetScores:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    iput-object p5, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {p0, p6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    return-void
.end method

.method private buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;
    .registers 6

    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    iget-object v3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetRanks:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;-><init>(Landroid/app/prediction/AppPredictor;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/os/UserHandle;Ljava/util/Map;)V

    return-object v0
.end method

.method private checkAppTargetRankValid(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private handleResult(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleSortedAppTargets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->afterCompute()V

    :cond_14
    return-void
.end method

.method private handleSortedAppTargets(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->checkAppTargetRankValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    new-instance v1, Landroid/content/ComponentName;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetRanks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSortedAppTargets, sortedAppTargets #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APSResolverComparator"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_5c
    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    return-void
.end method


# virtual methods
.method compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    invoke-virtual {v0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    :cond_10
    return-void
.end method

.method doCompute(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v3, Landroid/app/prediction/AppTarget$Builder;

    new-instance v4, Landroid/app/prediction/AppTargetId;

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5, v6}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_4c
    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/prediction/AppPredictor;->sortTargets(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method getScore(Landroid/content/ComponentName;)F
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method handleResultMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleSortedAppTargets(Ljava/util/List;)V

    goto :goto_20

    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    if-nez v0, :cond_20

    const-string v0, "APSResolverComparator"

    const-string v1, "Unexpected null result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_20
    :goto_20
    nop

    :goto_21
    return-void
.end method

.method synthetic lambda$doCompute$0$com-android-internal-app-AppPredictionServiceResolverComparator()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method synthetic lambda$doCompute$1$com-android-internal-app-AppPredictionServiceResolverComparator(Ljava/util/List;Ljava/util/List;)V
    .registers 11

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "APSResolverComparator"

    if-eqz v0, :cond_30

    const-string v0, "AppPredictionService disabled. Using resolver."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    iget-object v3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    new-instance v6, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->compute(Ljava/util/List;)V

    goto :goto_38

    :cond_30
    const-string v0, "AppPredictionService response received"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleResult(Ljava/util/List;)V

    :goto_38
    return-void
.end method

.method synthetic lambda$handleSortedAppTargets$2$com-android-internal-app-AppPredictionServiceResolverComparator(Landroid/app/prediction/AppTarget;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetScores:Ljava/util/Map;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateModel(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->notifyOnTargetSelected(Landroid/content/ComponentName;)V

    return-void
.end method
