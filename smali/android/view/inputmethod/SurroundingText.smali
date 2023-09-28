# classes2.dex

.class public final Landroid/view/inputmethod/SurroundingText;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOffset:I

.field private final mSelectionEnd:I

.field private final mSelectionStart:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/inputmethod/SurroundingText$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SurroundingText$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SurroundingText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/SurroundingText;->copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    iput p3, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    iput p4, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    return-void
.end method

.method private static copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1f

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1e
    return-object v1

    :catchall_1f
    move-exception v1

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_25
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    return v0
.end method

.method public getSelectionEnd()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
