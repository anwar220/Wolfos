# classes.dex

.class public final synthetic Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;

.field public final synthetic f$1:Landroid/app/cloudsearch/SearchResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;

    iput-object p2, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/app/cloudsearch/SearchResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;

    iget-object v1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/app/cloudsearch/SearchResponse;

    invoke-virtual {v0, v1}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->lambda$onSearchSucceeded$0$android-app-cloudsearch-CloudSearchManager$CallBackWrapper(Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method
