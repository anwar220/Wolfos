# classes2.dex

.class public final Landroid/view/textservice/SentenceSuggestionsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textservice/SentenceSuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLengths:[I

.field private final mOffsets:[I

.field private final mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textservice/SentenceSuggestionsInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SentenceSuggestionsInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SentenceSuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Landroid/view/textservice/SuggestionsInfo;

    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    sget-object v2, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public constructor <init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_2d

    if-eqz p3, :cond_2d

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_27

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_27

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/textservice/SuggestionsInfo;

    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLengthAt(I)I
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget v0, v0, p1

    return v0

    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method public getOffsetAt(I)I
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget v0, v0, p1

    return v0

    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method public getSuggestionsCount()I
    .registers 2

    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    array-length v0, v0

    return v0
.end method

.method public getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-object v0, v0, p1

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mSuggestionsInfos:[Landroid/view/textservice/SuggestionsInfo;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mOffsets:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Landroid/view/textservice/SentenceSuggestionsInfo;->mLengths:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method