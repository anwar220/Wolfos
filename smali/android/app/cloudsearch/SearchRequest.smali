# classes.dex

.class public final Landroid/app/cloudsearch/SearchRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchRequest$Builder;,
        Landroid/app/cloudsearch/SearchRequest$SearchConstraintKey;
    }
.end annotation


# static fields
.field public static final CONSTRAINT_IS_PRESUBMIT_SUGGESTION:Ljava/lang/String; = "android.app.cloudsearch.IS_PRESUBMIT_SUGGESTION"

.field public static final CONSTRAINT_SEARCH_PROVIDER_FILTER:Ljava/lang/String; = "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallerPackageName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private final mMaxLatencyMillis:F

.field private final mQuery:Ljava/lang/String;

.field private final mResultNumber:I

.field private final mResultOffset:I

.field private mSearchConstraints:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/cloudsearch/SearchRequest$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchRequest$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/cloudsearch/SearchRequest$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmQuery(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmResultOffset(Landroid/app/cloudsearch/SearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmResultNumber(Landroid/app/cloudsearch/SearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmMaxLatencyMillis(Landroid/app/cloudsearch/SearchRequest$Builder;)F

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmSearchConstraints(Landroid/app/cloudsearch/SearchRequest$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmCallerPackageName(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/cloudsearch/SearchRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/cloudsearch/SearchRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    iput p2, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    iput p3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    iput p4, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    iput-object p5, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/app/cloudsearch/SearchRequest;-><init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;)V

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

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/cloudsearch/SearchRequest;

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    iget v4, v2, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    if-ne v3, v4, :cond_48

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    iget v4, v2, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    if-ne v3, v4, :cond_48

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    iget v4, v2, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_48

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    :goto_49
    return v0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public getCallerPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLatencyMillis()F
    .registers 2

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_a
    invoke-virtual {p0}, Landroid/app/cloudsearch/SearchRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    :cond_18
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultNumber()I
    .registers 2

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    return v0
.end method

.method public getResultOffset()I
    .registers 2

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    return v0
.end method

.method public getSearchConstraints()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCallerPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    const-string v1, "android.app.cloudsearch.IS_PRESUBMIT_SUGGESTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v3

    :goto_17
    const-string v1, "EMPTY"

    iget-object v4, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    const-string v5, "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_29
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v3

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    aput-object v3, v4, v2

    const-string v2, "SearchRequest: {query:%s,offset:%d;number:%d;max_latency:%f;is_presubmit:%b;search_provider:%s;callerPackageName:%s}"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
