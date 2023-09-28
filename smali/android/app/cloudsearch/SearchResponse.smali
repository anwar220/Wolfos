# classes.dex

.class public final Landroid/app/cloudsearch/SearchResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchResponse$Builder;,
        Landroid/app/cloudsearch/SearchResponse$SearchStatusCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_STATUS_NO_INTERNET:I = 0x2

.field public static final SEARCH_STATUS_OK:I = 0x0

.field public static final SEARCH_STATUS_TIME_OUT:I = 0x1

.field public static final SEARCH_STATUS_UNKNOWN:I = -0x1


# instance fields
.field private final mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Ljava/lang/String;

.field private final mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/cloudsearch/SearchResponse$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchResponse$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    iput-object p2, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/app/cloudsearch/SearchResponse-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/cloudsearch/SearchResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/cloudsearch/SearchResponse$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/cloudsearch/SearchResponse$Builder;->-$$Nest$fgetmStatusCode(Landroid/app/cloudsearch/SearchResponse$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    invoke-static {p1}, Landroid/app/cloudsearch/SearchResponse$Builder;->-$$Nest$fgetmSource(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/cloudsearch/SearchResponse$Builder;->-$$Nest$fgetmSearchResults(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    sget-object v0, Landroid/app/cloudsearch/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/cloudsearch/SearchResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/cloudsearch/SearchResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/cloudsearch/SearchResponse;

    iget v3, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    iget v4, v2, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public getSearchResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
