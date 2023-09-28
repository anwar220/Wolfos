# classes.dex

.class public final Landroid/app/cloudsearch/SearchResult$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtraInfos:Landroid/os/Bundle;

.field private mScore:F

.field private mSnippet:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExtraInfos(Landroid/app/cloudsearch/SearchResult$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScore(Landroid/app/cloudsearch/SearchResult$Builder;)F
    .registers 1

    iget p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnippet(Landroid/app/cloudsearch/SearchResult$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Landroid/app/cloudsearch/SearchResult$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    return-void
.end method


# virtual methods
.method public build()Landroid/app/cloudsearch/SearchResult;
    .registers 8

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/app/cloudsearch/SearchResult;

    iget-object v2, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    iget v4, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    iget-object v5, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/cloudsearch/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/os/Bundle;Landroid/app/cloudsearch/SearchResult-IA;)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure all required args are assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraInfos(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    return-object p0
.end method

.method public setScore(F)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2

    iput p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
