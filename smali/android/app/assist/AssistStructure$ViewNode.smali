# classes.dex

.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_HINTS:I = 0x10

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_OPTIONS:I = 0x20

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_SESSION_ID:I = 0x800

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_TYPE:I = 0x8

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_VALUE:I = 0x4

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_VIEW_ID:I = 0x1

.field static final AUTOFILL_FLAGS_HAS_AUTOFILL_VIRTUAL_VIEW_ID:I = 0x2

.field static final AUTOFILL_FLAGS_HAS_HINT_ID_ENTRY:I = 0x1000

.field static final AUTOFILL_FLAGS_HAS_HTML_INFO:I = 0x40

.field static final AUTOFILL_FLAGS_HAS_MAX_TEXT_EMS:I = 0x200

.field static final AUTOFILL_FLAGS_HAS_MAX_TEXT_LENGTH:I = 0x400

.field static final AUTOFILL_FLAGS_HAS_MIN_TEXT_EMS:I = 0x100

.field static final AUTOFILL_FLAGS_HAS_TEXT_ID_ENTRY:I = 0x80

.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x10000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_MIME_TYPES:I = -0x80000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL_DOMAIN:I = 0x80000

.field static final FLAGS_HAS_URL_SCHEME:I = 0x20000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillFlags:I

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHintIdEntry:Ljava/lang/String;

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mImportantForAutofill:I

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxEms:I

.field mMaxLength:I

.field mMinEms:I

.field mReceiveContentMimeTypes:[Ljava/lang/String;

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mTextIdEntry:Ljava/lang/String;

.field mWebDomain:Ljava/lang/String;

.field mWebScheme:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const v0, 0x22222222

    invoke-virtual {p1, v0, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    iget v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    iget-object v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PooledStringReader;

    iget-object v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/assist/AssistStructure$ViewNode;->initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_53

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v1, :cond_53

    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v4, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {v4, p1, v5}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_53
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/assist/AssistStructure$ViewNode;->initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V

    return-void
.end method

.method private static readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :cond_6
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_9
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 3

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_6

    array-length v0, v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getHintIdEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getImportantForAutofill()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    return v0
.end method

.method public getInputType()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getMaxTextEms()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    return v0
.end method

.method public getMaxTextLength()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    return v0
.end method

.method public getMinTextEms()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    return v0
.end method

.method public getReceiveContentMimeTypes()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getScrollX()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public getTextColor()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public getTextIdEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLineBaselines()[I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getTextSize()F
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getTextStyle()I
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getTop()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWebScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V
    .registers 12

    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_38

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v2, :cond_38

    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    :cond_38
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_e6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_45

    move v5, v4

    goto :goto_46

    :cond_45
    move v5, v2

    :goto_46
    iput-boolean v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_7a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_66

    new-instance v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct {v6, v5, v7}, Landroid/view/autofill/AutofillId;-><init>(II)V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    goto :goto_6d

    :cond_66
    new-instance v6, Landroid/view/autofill/AutofillId;

    invoke-direct {v6, v5}, Landroid/view/autofill/AutofillId;-><init>(I)V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    :goto_6d
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_7a

    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    :cond_7a
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_84

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    :cond_84
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_8e

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    :cond_8e
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_9c

    const-class v5, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    :cond_9c
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_a6

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    :cond_a6
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_b4

    const-class v5, Landroid/view/ViewStructure$HtmlInfo;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    :cond_b4
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_be

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    :cond_be
    and-int/lit16 v5, v1, 0x200

    if-eqz v5, :cond_c8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    :cond_c8
    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_d2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    :cond_d2
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_dc

    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    :cond_dc
    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_e6

    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    :cond_e6
    const/high16 v5, 0x4000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_104

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_120

    :cond_104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    :goto_120
    const/high16 v5, 0x8000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_131

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    :cond_131
    const/high16 v5, 0x40000000  # 2.0f

    and-int/2addr v5, v0

    if-eqz v5, :cond_14b

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    if-nez p3, :cond_143

    const/16 v5, 0x9

    new-array p3, v5, [F

    :cond_143
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_14b
    const/high16 v5, 0x10000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_156

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    :cond_156
    const/high16 v5, 0x20000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_161

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    :cond_161
    const/high16 v5, 0x2000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_170

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    :cond_170
    const/high16 v5, 0x1000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_182

    new-instance v5, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v6, 0x800000

    and-int/2addr v6, v0

    if-nez v6, :cond_17d

    move v2, v4

    :cond_17d
    invoke-direct {v5, p1, v2}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_182
    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-eqz v2, :cond_18d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    :cond_18d
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_198

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    :cond_198
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1a3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    :cond_1a3
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1b2

    const-class v2, Landroid/os/LocaleList;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    :cond_1b2
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1bd

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    :cond_1bd
    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1c8

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    :cond_1c8
    return-void
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isActivated()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isAssistBlocked()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isChecked()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isClickable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isContextClickable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 3

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isFocusable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFocused()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isOpaque()Z
    .registers 3

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSanitized()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .registers 2

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v1, "AssistStructure"

    const-string v2, "Failed to parse web domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    if-nez v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_30
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 4

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_13

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_13
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_1b
    return-void
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[FZ)I
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    iget v4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x0

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/high16 v7, 0x200000

    const/4 v8, -0x1

    if-eq v6, v8, :cond_16

    or-int/2addr v4, v7

    :cond_16
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v6, v6, -0x8000

    const/high16 v9, 0x4000000

    const/4 v11, 0x0

    if-nez v6, :cond_3a

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v6, v6, -0x8000

    if-nez v6, :cond_3a

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v6, v6, -0x8000

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_2e

    :cond_2d
    move v6, v11

    :goto_2e
    iget v12, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v12, v12, -0x8000

    if-eqz v12, :cond_36

    const/4 v12, 0x1

    goto :goto_37

    :cond_36
    move v12, v11

    :goto_37
    or-int/2addr v6, v12

    if-eqz v6, :cond_3b

    :cond_3a
    or-int/2addr v4, v9

    :cond_3b
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    const/high16 v12, 0x8000000

    if-nez v6, :cond_45

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v6, :cond_46

    :cond_45
    or-int/2addr v4, v12

    :cond_46
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x40000000  # 2.0f

    if-eqz v6, :cond_4d

    or-int/2addr v4, v13

    :cond_4d
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v14, 0x0

    cmpl-float v6, v6, v14

    const/high16 v14, 0x10000000

    if-eqz v6, :cond_57

    or-int/2addr v4, v14

    :cond_57
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v15, 0x3f800000  # 1.0f

    cmpl-float v6, v6, v15

    const/high16 v15, 0x20000000

    if-eqz v6, :cond_62

    or-int/2addr v4, v15

    :cond_62
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/high16 v16, 0x2000000

    if-eqz v6, :cond_6a

    or-int v4, v4, v16

    :cond_6a
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v17, 0x800000

    const/high16 v18, 0x1000000

    if-eqz v6, :cond_7c

    or-int v4, v4, v18

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v6

    if-nez v6, :cond_7c

    or-int v4, v4, v17

    :cond_7c
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    const/high16 v19, 0x40000

    if-eqz v6, :cond_84

    or-int v4, v4, v19

    :cond_84
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    const/high16 v20, 0x20000

    if-eqz v6, :cond_8c

    or-int v4, v4, v20

    :cond_8c
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    const/high16 v21, 0x80000

    if-eqz v6, :cond_94

    or-int v4, v4, v21

    :cond_94
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const/high16 v22, 0x10000

    if-eqz v6, :cond_9c

    or-int v4, v4, v22

    :cond_9c
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    const/high16 v23, -0x80000000

    if-eqz v6, :cond_a4

    or-int v4, v4, v23

    :cond_a4
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    const/high16 v24, 0x400000

    if-eqz v6, :cond_ac

    or-int v4, v4, v24

    :cond_ac
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v6, :cond_b5

    if-eqz p5, :cond_b5

    const/high16 v6, 0x100000

    or-int/2addr v4, v6

    :cond_b5
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    if-eqz v6, :cond_cd

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v6

    if-eqz v6, :cond_c3

    or-int/lit8 v5, v5, 0x2

    :cond_c3
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v6

    if-eqz v6, :cond_cd

    or-int/lit16 v5, v5, 0x800

    :cond_cd
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    if-eqz v6, :cond_d3

    or-int/lit8 v5, v5, 0x4

    :cond_d3
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    if-eqz v6, :cond_d9

    or-int/lit8 v5, v5, 0x8

    :cond_d9
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    if-eqz v6, :cond_df

    or-int/lit8 v5, v5, 0x10

    :cond_df
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_e5

    or-int/lit8 v5, v5, 0x20

    :cond_e5
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v6, v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_ed

    or-int/lit8 v5, v5, 0x40

    :cond_ed
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    if-le v6, v8, :cond_f3

    or-int/lit16 v5, v5, 0x100

    :cond_f3
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    if-le v6, v8, :cond_f9

    or-int/lit16 v5, v5, 0x200

    :cond_f9
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    if-le v6, v8, :cond_ff

    or-int/lit16 v5, v5, 0x400

    :cond_ff
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_105

    or-int/lit16 v5, v5, 0x80

    :cond_105
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_10b

    or-int/lit16 v5, v5, 0x1000

    :cond_10b
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    move v6, v4

    if-eqz v5, :cond_11b

    iget-boolean v10, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v10, :cond_119

    if-nez p3, :cond_11b

    :cond_119
    and-int/lit16 v6, v4, -0x201

    :cond_11b
    iget-object v10, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v10, :cond_128

    iget-boolean v10, v10, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v10, :cond_126

    or-int/lit8 v6, v6, 0x20

    goto :goto_128

    :cond_126
    and-int/lit8 v6, v6, -0x21

    :cond_128
    :goto_128
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    and-int/2addr v7, v4

    if-eqz v7, :cond_14d

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v7, v8, :cond_14d

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_14d

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    :cond_14d
    if-eqz v5, :cond_1f8

    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v7, :cond_162

    if-nez p3, :cond_160

    goto :goto_162

    :cond_160
    move v7, v11

    goto :goto_163

    :cond_162
    :goto_162
    const/4 v7, 0x1

    :goto_163
    move v3, v7

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_18b

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_17e

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_17e
    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_18b

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_18b
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_194

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_194
    and-int/lit8 v7, v5, 0x10

    if-eqz v7, :cond_19d

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :cond_19d
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_1b7

    if-eqz v3, :cond_1a6

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    goto :goto_1b4

    :cond_1a6
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v7, :cond_1b3

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_1b3

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    goto :goto_1b4

    :cond_1b3
    const/4 v7, 0x0

    :goto_1b4
    invoke-virtual {v1, v7, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1b7
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_1c0

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    :cond_1c0
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_1cb

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1cb
    and-int/lit16 v7, v5, 0x100

    if-eqz v7, :cond_1d4

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1d4
    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_1dd

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1dd
    and-int/lit16 v7, v5, 0x400

    if-eqz v7, :cond_1e6

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1e6
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_1ef

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    :cond_1ef
    and-int/lit16 v7, v5, 0x1000

    if-eqz v7, :cond_1f8

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    :cond_1f8
    and-int v7, v4, v9

    if-eqz v7, :cond_211

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_225

    :cond_211
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :goto_225
    and-int v7, v4, v12

    if-eqz v7, :cond_233

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_233
    and-int v7, v4, v13

    if-eqz v7, :cond_249

    if-nez p4, :cond_23e

    const/16 v7, 0x9

    new-array v7, v7, [F

    goto :goto_240

    :cond_23e
    move-object/from16 v7, p4

    :goto_240
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_24b

    :cond_249
    move-object/from16 v7, p4

    :goto_24b
    and-int v8, v4, v14

    if-eqz v8, :cond_254

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_254
    and-int v8, v4, v15

    if-eqz v8, :cond_25d

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_25d
    and-int v8, v4, v16

    if-eqz v8, :cond_266

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v8, v1, v11}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :cond_266
    and-int v8, v4, v18

    if-eqz v8, :cond_276

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    and-int v9, v4, v17

    if-nez v9, :cond_272

    const/4 v10, 0x1

    goto :goto_273

    :cond_272
    move v10, v11

    :goto_273
    invoke-virtual {v8, v1, v10, v3}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    :cond_276
    and-int v8, v4, v19

    if-eqz v8, :cond_27f

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_27f
    and-int v8, v4, v20

    if-eqz v8, :cond_288

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_288
    and-int v8, v4, v21

    if-eqz v8, :cond_291

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_291
    and-int v8, v4, v22

    if-eqz v8, :cond_29a

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v8, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_29a
    and-int v8, v4, v23

    if-eqz v8, :cond_2a3

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :cond_2a3
    and-int v8, v4, v24

    if-eqz v8, :cond_2ac

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_2ac
    return v4
.end method
