# classes.dex

.class final Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;
.super Landroid/app/cloudsearch/ICloudSearchManagerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/CloudSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallBackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

.field final synthetic this$0:Landroid/app/cloudsearch/CloudSearchManager;


# direct methods
.method constructor <init>(Landroid/app/cloudsearch/CloudSearchManager;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/CloudSearchManager$CallBack;Ljava/util/concurrent/Executor;)V
    .registers 5

    iput-object p1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->this$0:Landroid/app/cloudsearch/CloudSearchManager;

    invoke-direct {p0}, Landroid/app/cloudsearch/ICloudSearchManagerCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    iput-object p3, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iput-object p4, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onSearchFailed$1$android-app-cloudsearch-CloudSearchManager$CallBackWrapper(Landroid/app/cloudsearch/SearchResponse;)V
    .registers 4

    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iget-object v1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    invoke-interface {v0, v1, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBack;->onSearchFailed(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method

.method synthetic lambda$onSearchSucceeded$0$android-app-cloudsearch-CloudSearchManager$CallBackWrapper(Landroid/app/cloudsearch/SearchResponse;)V
    .registers 4

    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iget-object v1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    invoke-interface {v0, v1, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBack;->onSearchSucceeded(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method

.method public onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    .registers 4

    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;Landroid/app/cloudsearch/SearchResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V
    .registers 4

    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;Landroid/app/cloudsearch/SearchResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
