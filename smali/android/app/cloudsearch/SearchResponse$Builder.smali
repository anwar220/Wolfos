# classes.dex

.class public final Landroid/app/cloudsearch/SearchResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSearchResults(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSource(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusCode(Landroid/app/cloudsearch/SearchResponse$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    const-string v0, "DEFAULT"

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/cloudsearch/SearchResponse;
    .registers 6

    iget v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_19

    const/4 v1, 0x2

    if-gt v0, v1, :cond_19

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    if-eqz v0, :cond_19

    new-instance v0, Landroid/app/cloudsearch/SearchResponse;

    iget v1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/cloudsearch/SearchResponse;-><init>(ILjava/lang/String;Ljava/util/List;Landroid/app/cloudsearch/SearchResponse-IA;)V

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure all @NonNull args are assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSearchResults(Ljava/util/List;)Landroid/app/cloudsearch/SearchResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;)",
            "Landroid/app/cloudsearch/SearchResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResponse$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method public setStatusCode(I)Landroid/app/cloudsearch/SearchResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    return-object p0
.end method
