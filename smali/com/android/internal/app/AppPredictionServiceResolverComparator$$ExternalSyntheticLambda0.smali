# classes4.dex

.class public final synthetic Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    return-void
.end method


# virtual methods
.method public final afterCompute()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->lambda$doCompute$0$com-android-internal-app-AppPredictionServiceResolverComparator()V

    return-void
.end method
