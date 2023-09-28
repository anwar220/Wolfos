# classes3.dex

.class public final Landroid/text/style/SuggestionRangeSpan;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/SuggestionRangeSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/style/SuggestionRangeSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionRangeSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionRangeSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/SuggestionRangeSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method

.method public setBackgroundColor(I)V
    .registers 2

    iput p1, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionRangeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
