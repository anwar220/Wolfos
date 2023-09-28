# classes.dex

.class public final Landroid/app/cloudsearch/SearchRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallerPackageName:Ljava/lang/String;

.field private mMaxLatencyMillis:F

.field private mQuery:Ljava/lang/String;

.field private mResultNumber:I

.field private mResultOffset:I

.field private mSearchConstraints:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallerPackageName(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxLatencyMillis(Landroid/app/cloudsearch/SearchRequest$Builder;)F
    .registers 1

    iget p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuery(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultNumber(Landroid/app/cloudsearch/SearchRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultOffset(Landroid/app/cloudsearch/SearchRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchConstraints(Landroid/app/cloudsearch/SearchRequest$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    const/16 v0, 0xa

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    const/high16 v0, 0x43480000  # 200.0f

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    const-string v0, "DEFAULT_CALLER"

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/cloudsearch/SearchRequest;
    .registers 10

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    if-ltz v0, :cond_2c

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2c

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    if-eqz v0, :cond_2c

    new-instance v0, Landroid/app/cloudsearch/SearchRequest;

    iget-object v2, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    iget v4, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    iget v5, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    iget-object v6, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/app/cloudsearch/SearchRequest;-><init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest-IA;)V

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure all required args are valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallerPackageName(Ljava/lang/String;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxLatencyMillis(F)Landroid/app/cloudsearch/SearchRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public setResultNumber(I)Landroid/app/cloudsearch/SearchRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    return-object p0
.end method

.method public setResultOffset(I)Landroid/app/cloudsearch/SearchRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    return-object p0
.end method

.method public setSearchConstraints(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    return-object p0
.end method
