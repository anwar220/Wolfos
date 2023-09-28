# classes4.dex

.class public Landroid/widget/TextView;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$TextAppearanceAttributes;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$AutoSizeTextType;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$XMLTypefaceAttr;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field static final ACCESSIBILITY_ACTION_SMART_START_ID:I = 0x10001000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field public static final BORINGLAYOUT_FALLBACK_LINESPACING:J = 0xc926fdaL

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_CURSOR:Z = false

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final DEFAULT_LINE_BREAK_STYLE:I = 0x0

.field private static final DEFAULT_LINE_BREAK_WORD_STYLE:I = 0x0

.field private static final DEFAULT_TYPEFACE:I = -0x1

.field private static final DEVICE_PROVISIONED_NO:I = 0x1

.field private static final DEVICE_PROVISIONED_UNKNOWN:I = 0x0

.field private static final DEVICE_PROVISIONED_YES:I = 0x2

.field private static final ELLIPSIZE_END:I = 0x3

.field private static final ELLIPSIZE_MARQUEE:I = 0x4

.field private static final ELLIPSIZE_MIDDLE:I = 0x2

.field private static final ELLIPSIZE_NONE:I = 0x0

.field private static final ELLIPSIZE_NOT_SET:I = -0x1

.field private static final ELLIPSIZE_START:I = 0x1

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final FALLBACK_LINE_SPACING_ALL:I = 0x2

.field private static final FALLBACK_LINE_SPACING_NONE:I = 0x0

.field private static final FALLBACK_LINE_SPACING_STATIC_LAYOUT_ONLY:I = 0x1

.field private static final FLOATING_TOOLBAR_SELECT_ALL_REFRESH_DELAY:I = 0x1f4

.field static final ID_ASSIST:I = 0x1020041

.field static final ID_AUTOFILL:I = 0x1020043

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final KEY_DOWN_HANDLED_BY_KEY_LISTENER:I = 0x1

.field private static final KEY_DOWN_HANDLED_BY_MOVEMENT_METHOD:I = 0x2

.field private static final KEY_EVENT_HANDLED:I = -0x1

.field private static final KEY_EVENT_NOT_HANDLED:I = 0x0

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MAX_LENGTH_FOR_SINGLE_LINE_EDIT_TEXT:I = 0x1388

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final NO_POINTER_ID:I = -0x1

.field private static final PIXELS:I = 0x2

.field public static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field public static final STATICLAYOUT_FALLBACK_LINESPACING:J = 0x2401fbaL

.field private static final TEMP_POSITION:[F

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field static final VERY_WIDE:I = 0x100000

.field private static final sAppearanceValues:Landroid/util/SparseIntArray;

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field mCursorDrawableRes:I

.field private mCursorVisibleFromAttr:Z

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDeviceProvisionedState:I

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFontWeightAdjustment:I

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mHasPresetAutoSizeValues:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintId:I

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mImeIsConsumingInput:Z

.field private mIncludePad:Z

.field private mIsPrimePointerFromHandleView:Z

.field private mJustificationMode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastX:I

.field private mLastY:I

.field private mLayout:Landroid/text/Layout;

.field private mLineBreakStyle:I

.field private mLineBreakWordStyle:I

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListenerChanged:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalesChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mModelSupport:Z

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNeedsAutoSizeText:Z

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mOriginalTypeface:Landroid/graphics/Typeface;

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPrecomputed:Landroid/text/PrecomputedText;

.field private mPreventDefaultMovement:Z

.field private mPrimePointerId:I

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannable:Landroid/text/Spannable;

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStub:Lcom/xiaomi/mirror/MiuiMirrorStub;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionContainerLayout:I

.field mTextEditSuggestionHighlightStyle:I

.field mTextEditSuggestionItemLayout:I

.field private mTextId:I

.field private mTextOperationUser:Landroid/os/UserHandle;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSelectHandle:Landroid/graphics/drawable/Drawable;

.field private mTextSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field private mTextSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mTextSelectHandleRightRes:I

.field private mTextSetFromXmlOrResourceId:Z

.field private mTextSizeUnit:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUseFallbackLineSpacing:I

.field private final mUseInternationalizedInput:Z

.field private final mUseTextPaddingForUiTranslation:Z

.field private mUserSetTextScaleX:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransformed(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendBeforeTextChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextServicesLocaleLocked(Landroid/widget/TextView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/TextView;->TEMP_POSITION:[F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/text/InputFilter;

    sput-object v2, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    new-instance v2, Landroid/text/SpannedString;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v2, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101034d

    aput v4, v3, v1

    sput-object v3, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v6, 0x5

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v8, 0x7

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x60

    const/16 v4, 0x13

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x4b

    const/16 v2, 0xc

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x5f

    const/16 v1, 0x12

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x48

    const/16 v1, 0xb

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x24

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x25

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x26

    const/16 v1, 0x9

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x27

    const/16 v1, 0xa

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x4c

    const/16 v1, 0xd

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x5b

    const/16 v1, 0x11

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x4d

    const/16 v1, 0xe

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x4e

    const/16 v1, 0xf

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x5a

    const/16 v1, 0x10

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x61

    const/16 v1, 0x14

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x62

    const/16 v1, 0x15

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 85

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const-string v13, "Failure reading input extras"

    const-string v14, "TextView"

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v15, 0x0

    iput-object v15, v8, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    nop

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    nop

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/4 v7, 0x1

    iput-boolean v7, v8, Landroid/widget/TextView;->mCursorVisibleFromAttr:Z

    const/4 v6, 0x3

    iput v6, v8, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/4 v5, -0x1

    iput v5, v8, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v4, 0x0

    iput v4, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, v8, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    iput-boolean v4, v8, Landroid/widget/TextView;->mLocalesChanged:Z

    iput v5, v8, Landroid/widget/TextView;->mTextSizeUnit:I

    iput v4, v8, Landroid/widget/TextView;->mLineBreakStyle:I

    iput v4, v8, Landroid/widget/TextView;->mLineBreakWordStyle:I

    iput-boolean v4, v8, Landroid/widget/TextView;->mListenerChanged:Z

    const v0, 0x800033

    iput v0, v8, Landroid/widget/TextView;->mGravity:I

    iput-boolean v7, v8, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, v8, Landroid/widget/TextView;->mSpacingMult:F

    const/4 v0, 0x0

    iput v0, v8, Landroid/widget/TextView;->mSpacingAdd:F

    const v0, 0x7fffffff

    iput v0, v8, Landroid/widget/TextView;->mMaximum:I

    iput v7, v8, Landroid/widget/TextView;->mMaxMode:I

    iput v4, v8, Landroid/widget/TextView;->mMinimum:I

    iput v7, v8, Landroid/widget/TextView;->mMinMode:I

    iput v0, v8, Landroid/widget/TextView;->mOldMaximum:I

    iput v7, v8, Landroid/widget/TextView;->mOldMaxMode:I

    iput v0, v8, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v2, 0x2

    iput v2, v8, Landroid/widget/TextView;->mMaxWidthMode:I

    iput v4, v8, Landroid/widget/TextView;->mMinWidth:I

    iput v2, v8, Landroid/widget/TextView;->mMinWidthMode:I

    iput v5, v8, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    iput-boolean v7, v8, Landroid/widget/TextView;->mIncludePad:Z

    iput v5, v8, Landroid/widget/TextView;->mDeferScroll:I

    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v8, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    const v0, 0x6633b5e5

    iput v0, v8, Landroid/widget/TextView;->mHighlightColor:I

    iput-boolean v7, v8, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iput v5, v8, Landroid/widget/TextView;->mPrimePointerId:I

    iput v4, v8, Landroid/widget/TextView;->mDeviceProvisionedState:I

    iput v4, v8, Landroid/widget/TextView;->mAutoSizeTextType:I

    iput-boolean v4, v8, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v8, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    iput v1, v8, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iput v1, v8, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v8, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    iput-boolean v4, v8, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    iput-boolean v4, v8, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    iput v4, v8, Landroid/widget/TextView;->mTextId:I

    iput v4, v8, Landroid/widget/TextView;->mHintId:I

    iput v5, v8, Landroid/widget/TextView;->mLastX:I

    iput v5, v8, Landroid/widget/TextView;->mLastY:I

    iput-boolean v4, v8, Landroid/widget/TextView;->mModelSupport:Z

    iput-object v15, v8, Landroid/widget/TextView;->mStub:Lcom/xiaomi/mirror/MiuiMirrorStub;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_a0

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setImportantForAutofill(I)V

    :cond_a0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForContentCapture()I

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setImportantForContentCapture(I)V

    :cond_a9
    const-string v4, ""

    invoke-direct {v8, v4}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v15

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    iget v1, v15, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget v1, v15, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v1, 0x0

    iput-object v1, v8, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    new-instance v0, Landroid/widget/TextView$TextAppearanceAttributes;

    invoke-direct {v0, v1}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>(Landroid/widget/TextView$TextAppearanceAttributes-IA;)V

    move-object v1, v0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    const/16 v0, 0xf

    iput v0, v1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    const/4 v5, 0x0

    iput v5, v8, Landroid/widget/TextView;->mBreakStrategy:I

    iput v5, v8, Landroid/widget/TextView;->mHyphenationFrequency:I

    iput v5, v8, Landroid/widget/TextView;->mJustificationMode:I

    move-object/from16 v16, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget-object v0, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    invoke-virtual {v15, v10, v0, v11, v12}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v21, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    move-object/from16 v22, v13

    move-object/from16 v19, v14

    const/high16 v14, -0x40800000  # -1.0f

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move v14, v5

    move-object v5, v4

    move-object/from16 v4, p2

    move-object/from16 v24, v5

    const/4 v10, -0x1

    move-object v5, v0

    move/from16 v20, v6

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v7, v10, :cond_146

    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v15, v7, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v25

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v25

    move/from16 v26, v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    move-object/from16 v7, v25

    goto :goto_149

    :cond_146
    move/from16 v26, v7

    move-object v7, v1

    :goto_149
    if-eqz v7, :cond_153

    invoke-direct {v8, v9, v7, v13, v14}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    iput-boolean v14, v13, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_153
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, -0x1

    const/16 v45, 0x0

    const/16 v46, -0x1

    const-string v47, ""

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/high16 v50, -0x40800000  # -1.0f

    const/high16 v51, -0x40800000  # -1.0f

    const/high16 v52, -0x40800000  # -1.0f

    const/16 v53, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->TextView:[I

    move v6, v10

    move-object/from16 v10, p2

    invoke-virtual {v15, v10, v1, v11, v12}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v3, Lcom/android/internal/R$styleable;->TextView:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v54, v5

    move/from16 v6, p3

    move-object/from16 v56, v7

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v3, v54

    const/4 v4, 0x1

    invoke-direct {v8, v9, v3, v13, v4}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v7

    move/from16 v58, v25

    move/from16 v59, v28

    move/from16 v60, v30

    move/from16 v61, v31

    move/from16 v62, v32

    move/from16 v63, v33

    move/from16 v64, v34

    move-object/from16 v65, v35

    move-object/from16 v66, v36

    move-object/from16 v67, v37

    move-object/from16 v68, v38

    move-object/from16 v69, v39

    move-object/from16 v70, v40

    move-object/from16 v71, v41

    move-object/from16 v72, v42

    move/from16 v73, v43

    move/from16 v74, v44

    move/from16 v75, v45

    move/from16 v76, v46

    move-object/from16 v77, v47

    move-object/from16 v78, v48

    move/from16 v79, v49

    move/from16 v57, v53

    move v7, v6

    move v6, v2

    move v2, v1

    move v1, v0

    :goto_1eb
    if-ge v4, v5, :cond_1022

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    packed-switch v14, :pswitch_data_14fe

    :pswitch_1f4  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x24, 0x25, 0x26, 0x27, 0x41, 0x42, 0x44, 0x45, 0x48, 0x4b, 0x4c, 0x4d, 0x4e, 0x5a, 0x5b, 0x5f, 0x60
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_21e  #0x64
    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_24f  #0x63
    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_280  #0x62
    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mLineBreakWordStyle:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_2b1  #0x61
    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mLineBreakStyle:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_2e2  #0x5e
    move/from16 v28, v5

    const/4 v5, -0x1

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v6, v0

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_2f2  #0x5d
    move/from16 v28, v5

    const/4 v5, -0x1

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v2, v0

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_302  #0x5c
    move/from16 v28, v5

    const/4 v5, -0x1

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v1, v0

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_312  #0x59
    move/from16 v28, v5

    const/4 v5, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mJustificationMode:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_344  #0x58
    move/from16 v28, v5

    const/high16 v5, -0x40800000  # -1.0f

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move/from16 v51, v0

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_356  #0x57
    move/from16 v28, v5

    const/high16 v5, -0x40800000  # -1.0f

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move/from16 v50, v0

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_368  #0x56
    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_3a7

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {v8, v5}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :cond_3a7
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_3cf  #0x55
    move/from16 v28, v5

    const/high16 v5, -0x40800000  # -1.0f

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move/from16 v52, v0

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_3e1  #0x54
    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mAutoSizeTextType:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_412  #0x53
    move/from16 v28, v5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v30, v15

    const/4 v5, 0x1

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v0, Landroid/widget/Editor;->mAllowUndo:Z

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_448  #0x52
    move/from16 v28, v5

    move-object/from16 v30, v15

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mHyphenationFrequency:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_479  #0x51
    move/from16 v28, v5

    move-object/from16 v30, v15

    const/4 v5, 0x0

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mBreakStrategy:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_4aa  #0x50
    move/from16 v28, v5

    move-object/from16 v30, v15

    const/4 v5, -0x1

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move-object/from16 v5, v72

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    move-object/from16 v72, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_4c1  #0x4f
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v71, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_4d3  #0x4a
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v70, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_4e5  #0x49
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v69, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    goto/16 :goto_100f

    :pswitch_4f7  #0x47
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_528  #0x46
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mCursorDrawableRes:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_559  #0x43
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_58b  #0x40
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_5bc  #0x3f
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_5ed  #0x3e
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_61e  #0x3d
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v15, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v15, v15, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v15, v15, Landroid/widget/Editor$InputContentType;->imeActionId:I

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_660  #0x3c
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_69c  #0x3b
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v15, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v15, v15, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v15, v15, Landroid/widget/Editor$InputContentType;->imeOptions:I

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_6de  #0x3a
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v5, v72

    const/4 v15, 0x0

    :try_start_6e5
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_6e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e5 .. :try_end_6e9} :catch_744
    .catch Ljava/io/IOException; {:try_start_6e5 .. :try_end_6e9} :catch_718

    :try_start_6e9
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_6ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e9 .. :try_end_6ec} :catch_710
    .catch Ljava/io/IOException; {:try_start_6e9 .. :try_end_6ec} :catch_718

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    goto/16 :goto_fef

    :catch_710
    move-exception v0

    move-object/from16 v15, v19

    move/from16 v19, v6

    move-object/from16 v6, v22

    goto :goto_74b

    :catch_718
    move-exception v0

    move-object/from16 v15, v19

    move/from16 v19, v6

    move-object/from16 v6, v22

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :catch_744
    move-exception v0

    move-object/from16 v15, v19

    move/from16 v19, v6

    move-object/from16 v6, v22

    :goto_74b
    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v33, v1

    move/from16 v32, v2

    move-object/from16 v22, v6

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_772  #0x39
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move-object/from16 v6, v22

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_7a7  #0x38
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move-object/from16 v6, v22

    const/4 v6, 0x0

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v57

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_7c0  #0x37
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    iget v0, v8, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v3, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_7f5  #0x36
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    iget v0, v8, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v3, v14, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_829  #0x35
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    iget v0, v8, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v0, v0

    invoke-virtual {v3, v14, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v8, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_85f  #0x34
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v73, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_879  #0x33
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v67, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_893  #0x32
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v65, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_8ad  #0x31
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v68, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_8c7  #0x30
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v66, v0

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_8e1  #0x2f
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v15, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move-object/from16 v31, v15

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v8, Landroid/widget/TextView;->mFreezesText:Z

    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v37, v6

    move/from16 v34, v7

    move-object/from16 v36, v13

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_916  #0x2e
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v15, v58

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v58, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    goto/16 :goto_100f

    :pswitch_930  #0x2d
    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v32, v2

    move/from16 v2, v61

    invoke-virtual {v3, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v61, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    goto/16 :goto_100f

    :pswitch_950  #0x2c
    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v2, v61

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v33, v1

    move/from16 v1, v62

    invoke-virtual {v3, v14, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v62, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_976  #0x2b
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v27, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_99c  #0x2a
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v10, v60

    invoke-virtual {v3, v14, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v60, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_9c4  #0x29
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v29, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_9ec  #0x28
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v11, v59

    invoke-virtual {v3, v14, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v59, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_a16  #0x23
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    const/4 v12, -0x1

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v76, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_a41  #0x22
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    const/4 v12, 0x1

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_a78

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    move/from16 v37, v6

    move/from16 v34, v7

    move-object/from16 v36, v13

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :cond_a78
    move/from16 v37, v6

    move/from16 v34, v7

    move-object/from16 v36, v13

    move/from16 v13, v63

    move/from16 v12, v64

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    goto/16 :goto_fef

    :pswitch_a8a  #0x21
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v12, v64

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v64, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    goto/16 :goto_100f

    :pswitch_ab6  #0x20
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v34, v7

    move/from16 v7, v75

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v75, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    goto/16 :goto_100f

    :pswitch_ae8  #0x1f
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v7, v75

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v35, v7

    move/from16 v7, v79

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v79, v0

    move-object/from16 v36, v13

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    move/from16 v75, v35

    goto/16 :goto_100f

    :pswitch_b20  #0x1e
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v73

    move-object/from16 v36, v13

    const/4 v13, 0x0

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_b57

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :cond_b57
    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_b5f  #0x1d
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v73

    const/4 v13, -0x1

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMinEms(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_b93  #0x1c
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setWidth(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_bc7  #0x1b
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEms(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_bfb  #0x1a
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_c2f  #0x19
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMinLines(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_c63  #0x18
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setHeight(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_c97  #0x17
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLines(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_ccb  #0x16
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, -0x1

    move/from16 v19, v6

    move/from16 v6, v73

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_cff  #0x15
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v73

    const/4 v13, 0x1

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_d36

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setCursorVisible(Z)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :cond_d36
    const/4 v13, 0x0

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_d3f  #0x14
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, 0x0

    move/from16 v19, v6

    move/from16 v6, v73

    const/high16 v13, 0x3f800000  # 1.0f

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    move/from16 v37, v6

    move/from16 v13, v63

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_d75  #0x13
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/high16 v13, 0x3f800000  # 1.0f

    move/from16 v19, v6

    move/from16 v6, v73

    const/4 v13, 0x0

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mHintId:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v78, v0

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    goto/16 :goto_100f

    :pswitch_db2  #0x12
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    const/4 v13, 0x0

    move/from16 v19, v6

    move/from16 v6, v73

    const/4 v0, 0x1

    move/from16 v34, v0

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v77, v0

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    goto/16 :goto_100f

    :pswitch_df0  #0x11
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v13, v63

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v63, v0

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    goto/16 :goto_100f

    :pswitch_e26  #0x10
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v73

    move/from16 v37, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_e5a  #0xf
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_e8c  #0xe
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_ebe  #0xd
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_ef0  #0xc
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v8, Landroid/widget/TextView;->mLinksClickable:Z

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_f21  #0xb
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/TextView;->mAutoLinkMask:I

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_f52  #0xa
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v6, v74

    goto/16 :goto_fef

    :pswitch_f84  #0x9
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v74, v0

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    goto :goto_100f

    :pswitch_fbb  #0x0
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move-object/from16 v31, v19

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v35, v75

    move/from16 v7, v79

    move/from16 v19, v6

    move/from16 v6, v74

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    invoke-virtual {v3, v14, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    nop

    :goto_fef
    move/from16 v62, v1

    move/from16 v61, v2

    move-object/from16 v72, v5

    move/from16 v74, v6

    move/from16 v79, v7

    move/from16 v60, v10

    move/from16 v59, v11

    move/from16 v64, v12

    move/from16 v63, v13

    move/from16 v58, v15

    move/from16 v6, v19

    move/from16 v2, v32

    move/from16 v1, v33

    move/from16 v7, v34

    move/from16 v75, v35

    move/from16 v73, v37

    :goto_100f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v5, v28

    move-object/from16 v15, v30

    move-object/from16 v19, v31

    move-object/from16 v13, v36

    const/4 v14, 0x0

    goto/16 :goto_1eb

    :cond_1022
    move/from16 v33, v1

    move/from16 v32, v2

    move/from16 v28, v5

    move/from16 v19, v6

    move/from16 v34, v7

    move-object/from16 v36, v13

    move-object/from16 v30, v15

    move/from16 v15, v58

    move/from16 v11, v59

    move/from16 v10, v60

    move/from16 v2, v61

    move/from16 v1, v62

    move/from16 v13, v63

    move/from16 v12, v64

    move-object/from16 v5, v72

    move/from16 v37, v73

    move/from16 v6, v74

    move/from16 v35, v75

    move/from16 v7, v79

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v54, v3

    move/from16 v14, v57

    and-int/lit16 v3, v14, 0xfff

    move-object/from16 v22, v4

    const/16 v4, 0x81

    if-ne v3, v4, :cond_105b

    const/4 v0, 0x1

    goto :goto_105c

    :cond_105b
    const/4 v0, 0x0

    :goto_105c
    move/from16 v23, v0

    const/16 v0, 0xe1

    if-ne v3, v0, :cond_1064

    const/4 v0, 0x1

    goto :goto_1065

    :cond_1064
    const/4 v0, 0x0

    :goto_1065
    move/from16 v31, v0

    const/16 v4, 0x12

    if-ne v3, v4, :cond_106d

    const/4 v0, 0x1

    goto :goto_106e

    :cond_106d
    const/4 v0, 0x0

    :goto_106e
    move/from16 v39, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt v4, v0, :cond_107c

    const/4 v0, 0x1

    goto :goto_107d

    :cond_107c
    const/4 v0, 0x0

    :goto_107d
    iput-boolean v0, v8, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const-wide/32 v41, 0xc926fda

    invoke-static/range {v41 .. v42}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_108e

    move/from16 v41, v3

    const/4 v3, 0x2

    iput v3, v8, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    goto :goto_10a1

    :cond_108e
    move/from16 v41, v3

    const/4 v3, 0x2

    const-wide/32 v42, 0x2401fba

    invoke-static/range {v42 .. v43}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_109e

    const/4 v3, 0x1

    iput v3, v8, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    goto :goto_10a1

    :cond_109e
    const/4 v3, 0x0

    iput v3, v8, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    :goto_10a1
    const/16 v0, 0x1e

    if-gt v4, v0, :cond_10a7

    const/4 v0, 0x1

    goto :goto_10a8

    :cond_10a7
    const/4 v0, 0x0

    :goto_10a8
    iput-boolean v0, v8, Landroid/widget/TextView;->mUseTextPaddingForUiTranslation:Z

    if-eqz v27, :cond_110e

    :try_start_10ac
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_10b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10ac .. :try_end_10b4} :catch_1105

    move-object v3, v0

    nop

    :try_start_10b6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18
    :try_end_10bf
    .catch Ljava/lang/InstantiationException; {:try_start_10b6 .. :try_end_10bf} :catch_10fa
    .catch Ljava/lang/IllegalAccessException; {:try_start_10b6 .. :try_end_10bf} :catch_10ef

    move-object/from16 v42, v3

    :try_start_10c1
    move-object/from16 v3, v18

    check-cast v3, Landroid/text/method/KeyListener;

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_10c7
    .catch Ljava/lang/InstantiationException; {:try_start_10c1 .. :try_end_10c7} :catch_10eb
    .catch Ljava/lang/IllegalAccessException; {:try_start_10c1 .. :try_end_10c7} :catch_10e7

    nop

    :try_start_10c8
    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v14, :cond_10ce

    move v3, v14

    goto :goto_10d6

    :cond_10ce
    iget-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v57

    move/from16 v3, v57

    :goto_10d6
    iput v3, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_10d8
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_10c8 .. :try_end_10d8} :catch_10db

    move/from16 v43, v4

    goto :goto_10e3

    :catch_10db
    move-exception v0

    iget-object v3, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v43, v4

    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/Editor;->mInputType:I

    :goto_10e3
    move/from16 v42, v10

    goto/16 :goto_11ef

    :catch_10e7
    move-exception v0

    move/from16 v43, v4

    goto :goto_10f4

    :catch_10eb
    move-exception v0

    move/from16 v43, v4

    goto :goto_10ff

    :catch_10ef
    move-exception v0

    move-object/from16 v42, v3

    move/from16 v43, v4

    :goto_10f4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_10fa
    move-exception v0

    move-object/from16 v42, v3

    move/from16 v43, v4

    :goto_10ff
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1105
    move-exception v0

    move/from16 v43, v4

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_110e
    move/from16 v43, v4

    if-eqz v29, :cond_112e

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v14, :cond_1127

    move v3, v14

    goto :goto_1128

    :cond_1127
    const/4 v3, 0x1

    :goto_1128
    iput v3, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v42, v10

    goto/16 :goto_11ef

    :cond_112e
    if-eqz v14, :cond_1143

    const/4 v3, 0x1

    invoke-direct {v8, v14, v3}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {v14}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    xor-int/2addr v0, v3

    move/from16 v75, v0

    move/from16 v42, v10

    move/from16 v57, v14

    move-object/from16 v4, v22

    goto/16 :goto_1221

    :cond_1143
    if-eqz v10, :cond_1160

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v57, v20

    move/from16 v3, v20

    iput v3, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v42, v10

    move-object/from16 v4, v22

    move/from16 v0, v35

    goto/16 :goto_1221

    :cond_1160
    move/from16 v3, v20

    if-eqz v11, :cond_1194

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_116f

    const/4 v4, 0x1

    goto :goto_1170

    :cond_116f
    const/4 v4, 0x0

    :goto_1170
    and-int/lit8 v20, v11, 0x4

    if-eqz v20, :cond_1176

    const/4 v3, 0x1

    goto :goto_1177

    :cond_1176
    const/4 v3, 0x0

    :goto_1177
    move/from16 v42, v10

    const/4 v10, 0x0

    invoke-static {v10, v4, v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    iget-object v3, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v0, v3, Landroid/widget/Editor;->mInputType:I

    move/from16 v57, v0

    move-object/from16 v4, v22

    move/from16 v0, v35

    goto/16 :goto_1221

    :cond_1194
    move/from16 v42, v10

    if-nez v2, :cond_11f6

    const/4 v3, -0x1

    if-eq v1, v3, :cond_119c

    goto :goto_11f6

    :cond_119c
    if-eqz v15, :cond_11af

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_11ef

    :cond_11af
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_11cf

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11c1

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor;->mInputType:I

    :cond_11c1
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move/from16 v57, v14

    move/from16 v0, v35

    goto :goto_1221

    :cond_11cf
    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11d6

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_11d6
    packed-switch v13, :pswitch_data_15cc

    goto :goto_11ef

    :pswitch_11da  #0x2
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move/from16 v57, v14

    move/from16 v0, v35

    goto :goto_1221

    :pswitch_11e1  #0x1
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move/from16 v57, v14

    move/from16 v0, v35

    goto :goto_1221

    :pswitch_11e8  #0x0
    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move/from16 v57, v14

    move/from16 v0, v35

    goto :goto_1221

    :goto_11ef
    move/from16 v57, v14

    move-object/from16 v4, v22

    move/from16 v0, v35

    goto :goto_1221

    :cond_11f6
    :goto_11f6
    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_15d6

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_120c

    :pswitch_11fd  #0x3
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    or-int/lit16 v0, v0, 0x1000

    goto :goto_120c

    :pswitch_1202  #0x2
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    or-int/lit16 v0, v0, 0x2000

    goto :goto_120c

    :pswitch_1207  #0x1
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    or-int/lit16 v0, v0, 0x4000

    nop

    :goto_120c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {v2, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v10

    iput-object v10, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v0, v4, Landroid/widget/Editor;->mInputType:I

    move/from16 v57, v0

    move-object/from16 v4, v22

    move/from16 v0, v35

    :goto_1221
    iget-object v3, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1231

    move/from16 v18, v1

    move/from16 v10, v23

    move/from16 v14, v31

    move/from16 v1, v39

    invoke-virtual {v3, v7, v10, v14, v1}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    goto :goto_1239

    :cond_1231
    move/from16 v18, v1

    move/from16 v10, v23

    move/from16 v14, v31

    move/from16 v1, v39

    :goto_1239
    if-eqz v12, :cond_124c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v3, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v22, v2

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne v4, v2, :cond_124e

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_124e

    :cond_124c
    move/from16 v22, v2

    :cond_124e
    :goto_124e
    move-object/from16 v2, v71

    if-nez v2, :cond_1258

    if-eqz v5, :cond_1255

    goto :goto_1258

    :cond_1255
    move-object/from16 v23, v2

    goto :goto_127e

    :cond_1258
    :goto_1258
    iget-object v3, v8, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v3, :cond_1263

    new-instance v3, Landroid/widget/TextView$Drawables;

    invoke-direct {v3, v9}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1263
    if-eqz v2, :cond_1271

    iget-object v3, v8, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v2, v3, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v3, v8, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v23, v2

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/widget/TextView$Drawables;->mHasTint:Z

    goto :goto_1274

    :cond_1271
    move-object/from16 v23, v2

    const/4 v2, 0x1

    :goto_1274
    if-eqz v5, :cond_127e

    iget-object v3, v8, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v5, v3, Landroid/widget/TextView$Drawables;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v3, v8, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v2, v3, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    :cond_127e
    :goto_127e
    move-object/from16 v31, v5

    move/from16 v35, v11

    move-object/from16 v5, v65

    move-object/from16 v2, v66

    move-object/from16 v11, v67

    move-object/from16 v3, v68

    invoke-virtual {v8, v5, v2, v11, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v39, v2

    move-object/from16 v44, v3

    move-object/from16 v2, v69

    move-object/from16 v3, v70

    invoke-direct {v8, v2, v3}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v45, v2

    move/from16 v2, v37

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-direct {v8, v0}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    const/4 v2, 0x0

    invoke-direct {v8, v0, v0, v0, v2}, Landroid/widget/TextView;->applySingleLine(ZZZZ)V

    if-eqz v0, :cond_12b4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_12b4

    const/4 v2, -0x1

    if-ne v6, v2, :cond_12b4

    const/16 v74, 0x3

    goto :goto_12b6

    :cond_12b4
    move/from16 v74, v6

    :goto_12b6
    packed-switch v74, :pswitch_data_15e0

    goto :goto_12eb

    :pswitch_12ba  #0x4
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v2

    if-eqz v2, :cond_12cc

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v6, 0x0

    iput v6, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_12d3

    :cond_12cc
    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iput v2, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_12d3
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_12eb

    :pswitch_12d9  #0x3
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_12eb

    :pswitch_12df  #0x2
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_12eb

    :pswitch_12e5  #0x1
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    nop

    :goto_12eb
    if-nez v7, :cond_12f6

    if-nez v10, :cond_12f6

    if-nez v14, :cond_12f6

    if-eqz v1, :cond_12f4

    goto :goto_12f6

    :cond_12f4
    const/4 v2, 0x0

    goto :goto_12f7

    :cond_12f6
    :goto_12f6
    const/4 v2, 0x1

    :goto_12f7
    if-nez v2, :cond_130c

    iget-object v6, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_1308

    iget v6, v6, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v6, v6, 0xfff

    move/from16 v46, v1

    const/16 v1, 0x81

    if-ne v6, v1, :cond_130a

    goto :goto_130e

    :cond_1308
    move/from16 v46, v1

    :cond_130a
    const/4 v1, 0x0

    goto :goto_130f

    :cond_130c
    move/from16 v46, v1

    :goto_130e
    const/4 v1, 0x1

    :goto_130f
    if-eqz v1, :cond_1319

    move/from16 v20, v1

    move-object/from16 v6, v36

    const/4 v1, 0x3

    iput v1, v6, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    goto :goto_131d

    :cond_1319
    move/from16 v20, v1

    move-object/from16 v6, v36

    :goto_131d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, v8, Landroid/widget/TextView;->mFontWeightAdjustment:I

    invoke-direct {v8, v6}, Landroid/widget/TextView;->applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V

    if-eqz v2, :cond_1339

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1339
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v1, :cond_1355

    if-eqz v0, :cond_1355

    move/from16 v36, v2

    move/from16 v1, v76

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1352

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    move/from16 v38, v0

    const/16 v0, 0x1388

    invoke-direct {v2, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput-object v2, v8, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    goto :goto_135b

    :cond_1352
    move/from16 v38, v0

    goto :goto_135b

    :cond_1355
    move/from16 v38, v0

    move/from16 v36, v2

    move/from16 v1, v76

    :goto_135b
    iget-object v0, v8, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    if-eqz v0, :cond_136c

    move-object/from16 v47, v3

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    const/16 v25, 0x0

    aput-object v0, v3, v25

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1385

    :cond_136c
    move-object/from16 v47, v3

    const/4 v2, 0x1

    const/16 v25, 0x0

    if-ltz v1, :cond_1380

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1385

    :cond_1380
    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_1385
    move-object/from16 v2, v77

    invoke-virtual {v8, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, v8, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1393

    move-object/from16 v3, v24

    iput-object v3, v8, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    goto :goto_1395

    :cond_1393
    move-object/from16 v3, v24

    :goto_1395
    iget-object v0, v8, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    if-nez v0, :cond_139b

    iput-object v3, v8, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :cond_139b
    if-eqz v34, :cond_13a0

    const/4 v3, 0x1

    iput-boolean v3, v8, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    :cond_13a0
    move-object/from16 v3, v78

    if-eqz v3, :cond_13a7

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_13a7
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    move/from16 v24, v1

    move/from16 v59, v35

    move/from16 v60, v42

    move-object/from16 v1, p2

    move-object/from16 v35, v2

    move-object/from16 v42, v3

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, v8, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_13ca

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_13c8

    goto :goto_13ca

    :cond_13c8
    const/4 v1, 0x0

    goto :goto_13cb

    :cond_13ca
    :goto_13ca
    const/4 v1, 0x1

    :goto_13cb
    if-nez v1, :cond_13d7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v48

    if-eqz v48, :cond_13d4

    goto :goto_13d7

    :cond_13d4
    const/16 v48, 0x0

    goto :goto_13d9

    :cond_13d7
    :goto_13d7
    const/16 v48, 0x1

    :goto_13d9
    if-nez v1, :cond_13e5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v49

    if-eqz v49, :cond_13e2

    goto :goto_13e5

    :cond_13e2
    const/16 v49, 0x0

    goto :goto_13e7

    :cond_13e5
    :goto_13e5
    const/16 v49, 0x1

    :goto_13e7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFocusable()I

    move-result v53

    move/from16 v54, v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/16 v28, 0x0

    move/from16 v2, v28

    move/from16 v3, v48

    move-object/from16 v28, v4

    move-object/from16 v48, v5

    move/from16 v4, v49

    move/from16 v5, v53

    :goto_13ff
    if-ge v2, v1, :cond_145f

    move/from16 v49, v1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_15ec

    move/from16 v55, v1

    move-object/from16 v53, v6

    move/from16 v58, v7

    const/16 v7, 0x12

    goto :goto_1456

    :sswitch_1413
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v53, v6

    move/from16 v58, v7

    const/16 v7, 0x12

    goto :goto_1456

    :sswitch_141e
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v53, v6

    move/from16 v58, v7

    const/16 v7, 0x12

    goto :goto_1456

    :sswitch_1429
    new-instance v53, Landroid/util/TypedValue;

    invoke-direct/range {v53 .. v53}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v55, v53

    move-object/from16 v53, v6

    move-object/from16 v6, v55

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v55

    if-eqz v55, :cond_1450

    move/from16 v55, v1

    iget v1, v6, Landroid/util/TypedValue;->type:I

    move/from16 v58, v7

    const/16 v7, 0x12

    if-ne v1, v7, :cond_144c

    iget v1, v6, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_144a

    const/4 v1, 0x0

    goto :goto_144e

    :cond_144a
    const/4 v1, 0x1

    goto :goto_144e

    :cond_144c
    iget v1, v6, Landroid/util/TypedValue;->data:I

    :goto_144e
    move v5, v1

    goto :goto_1456

    :cond_1450
    move/from16 v55, v1

    move/from16 v58, v7

    const/16 v7, 0x12

    :goto_1456
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v49

    move-object/from16 v6, v53

    move/from16 v7, v58

    goto :goto_13ff

    :cond_145f
    move/from16 v49, v1

    move-object/from16 v53, v6

    move/from16 v58, v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFocusable()I

    move-result v1

    if-eq v5, v1, :cond_1471

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setFocusable(I)V

    :cond_1471
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget-object v1, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_147e

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_147e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1489

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_148a

    :cond_1489
    const/4 v1, 0x1

    :goto_148a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v2

    if-eqz v2, :cond_14dc

    iget v2, v8, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-ne v2, v1, :cond_14df

    iget-boolean v1, v8, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-nez v1, :cond_14d8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v6, v50, v2

    if-nez v6, :cond_14b0

    const/high16 v6, 0x41400000  # 12.0f

    const/4 v7, 0x2

    invoke-static {v7, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v50

    move/from16 v6, v50

    goto :goto_14b3

    :cond_14b0
    const/4 v7, 0x2

    move/from16 v6, v50

    :goto_14b3
    cmpl-float v21, v51, v2

    if-nez v21, :cond_14c0

    const/high16 v2, 0x42e00000  # 112.0f

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v51

    move/from16 v2, v51

    goto :goto_14c2

    :cond_14c0
    move/from16 v2, v51

    :goto_14c2
    const/high16 v7, -0x40800000  # -1.0f

    cmpl-float v7, v52, v7

    if-nez v7, :cond_14cd

    const/high16 v52, 0x3f800000  # 1.0f

    move/from16 v7, v52

    goto :goto_14cf

    :cond_14cd
    move/from16 v7, v52

    :goto_14cf
    invoke-direct {v8, v6, v2, v7}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    move/from16 v51, v2

    move/from16 v50, v6

    move/from16 v52, v7

    :cond_14d8
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    goto :goto_14df

    :cond_14dc
    const/4 v1, 0x0

    iput v1, v8, Landroid/widget/TextView;->mAutoSizeTextType:I

    :cond_14df
    :goto_14df
    if-ltz v33, :cond_14e7

    move/from16 v1, v33

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    goto :goto_14e9

    :cond_14e7
    move/from16 v1, v33

    :goto_14e9
    if-ltz v32, :cond_14f1

    move/from16 v2, v32

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    goto :goto_14f3

    :cond_14f1
    move/from16 v2, v32

    :goto_14f3
    if-ltz v19, :cond_14fb

    move/from16 v6, v19

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLineHeight(I)V

    goto :goto_14fd

    :cond_14fb
    move/from16 v6, v19

    :goto_14fd
    return-void

    :pswitch_data_14fe
    .packed-switch 0x0
        :pswitch_fbb  #00000000
        :pswitch_1f4  #00000001
        :pswitch_1f4  #00000002
        :pswitch_1f4  #00000003
        :pswitch_1f4  #00000004
        :pswitch_1f4  #00000005
        :pswitch_1f4  #00000006
        :pswitch_1f4  #00000007
        :pswitch_1f4  #00000008
        :pswitch_f84  #00000009
        :pswitch_f52  #0000000a
        :pswitch_f21  #0000000b
        :pswitch_ef0  #0000000c
        :pswitch_ebe  #0000000d
        :pswitch_e8c  #0000000e
        :pswitch_e5a  #0000000f
        :pswitch_e26  #00000010
        :pswitch_df0  #00000011
        :pswitch_db2  #00000012
        :pswitch_d75  #00000013
        :pswitch_d3f  #00000014
        :pswitch_cff  #00000015
        :pswitch_ccb  #00000016
        :pswitch_c97  #00000017
        :pswitch_c63  #00000018
        :pswitch_c2f  #00000019
        :pswitch_bfb  #0000001a
        :pswitch_bc7  #0000001b
        :pswitch_b93  #0000001c
        :pswitch_b5f  #0000001d
        :pswitch_b20  #0000001e
        :pswitch_ae8  #0000001f
        :pswitch_ab6  #00000020
        :pswitch_a8a  #00000021
        :pswitch_a41  #00000022
        :pswitch_a16  #00000023
        :pswitch_1f4  #00000024
        :pswitch_1f4  #00000025
        :pswitch_1f4  #00000026
        :pswitch_1f4  #00000027
        :pswitch_9ec  #00000028
        :pswitch_9c4  #00000029
        :pswitch_99c  #0000002a
        :pswitch_976  #0000002b
        :pswitch_950  #0000002c
        :pswitch_930  #0000002d
        :pswitch_916  #0000002e
        :pswitch_8e1  #0000002f
        :pswitch_8c7  #00000030
        :pswitch_8ad  #00000031
        :pswitch_893  #00000032
        :pswitch_879  #00000033
        :pswitch_85f  #00000034
        :pswitch_829  #00000035
        :pswitch_7f5  #00000036
        :pswitch_7c0  #00000037
        :pswitch_7a7  #00000038
        :pswitch_772  #00000039
        :pswitch_6de  #0000003a
        :pswitch_69c  #0000003b
        :pswitch_660  #0000003c
        :pswitch_61e  #0000003d
        :pswitch_5ed  #0000003e
        :pswitch_5bc  #0000003f
        :pswitch_58b  #00000040
        :pswitch_1f4  #00000041
        :pswitch_1f4  #00000042
        :pswitch_559  #00000043
        :pswitch_1f4  #00000044
        :pswitch_1f4  #00000045
        :pswitch_528  #00000046
        :pswitch_4f7  #00000047
        :pswitch_1f4  #00000048
        :pswitch_4e5  #00000049
        :pswitch_4d3  #0000004a
        :pswitch_1f4  #0000004b
        :pswitch_1f4  #0000004c
        :pswitch_1f4  #0000004d
        :pswitch_1f4  #0000004e
        :pswitch_4c1  #0000004f
        :pswitch_4aa  #00000050
        :pswitch_479  #00000051
        :pswitch_448  #00000052
        :pswitch_412  #00000053
        :pswitch_3e1  #00000054
        :pswitch_3cf  #00000055
        :pswitch_368  #00000056
        :pswitch_356  #00000057
        :pswitch_344  #00000058
        :pswitch_312  #00000059
        :pswitch_1f4  #0000005a
        :pswitch_1f4  #0000005b
        :pswitch_302  #0000005c
        :pswitch_2f2  #0000005d
        :pswitch_2e2  #0000005e
        :pswitch_1f4  #0000005f
        :pswitch_1f4  #00000060
        :pswitch_2b1  #00000061
        :pswitch_280  #00000062
        :pswitch_24f  #00000063
        :pswitch_21e  #00000064
    .end packed-switch

    :pswitch_data_15cc
    .packed-switch 0x0
        :pswitch_11e8  #00000000
        :pswitch_11e1  #00000001
        :pswitch_11da  #00000002
    .end packed-switch

    :pswitch_data_15d6
    .packed-switch 0x1
        :pswitch_1207  #00000001
        :pswitch_1202  #00000002
        :pswitch_11fd  #00000003
    .end packed-switch

    :pswitch_data_15e0
    .packed-switch 0x1
        :pswitch_12e5  #00000001
        :pswitch_12df  #00000002
        :pswitch_12d9  #00000003
        :pswitch_12ba  #00000004
    .end packed-switch

    :sswitch_data_15ec
    .sparse-switch
        0x13 -> :sswitch_1429
        0x1e -> :sswitch_141e
        0x1f -> :sswitch_1413
    .end sparse-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyCompoundDrawableTint()V
    .registers 11

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v0, :cond_50

    :cond_f
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v2, Landroid/widget/TextView$Drawables;->mHasTint:Z

    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v3, v3, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v5, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v6, :cond_50

    aget-object v8, v5, v7

    if-nez v8, :cond_30

    goto :goto_4d

    :cond_30
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-ne v8, v9, :cond_37

    goto :goto_4d

    :cond_37
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3f

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3f
    if-eqz v3, :cond_44

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_44
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4d
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_50
    return-void
.end method

.method private applySingleLine(ZZZZ)V
    .registers 13

    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5a

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_15

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_15
    if-nez p4, :cond_18

    return-void

    :cond_18
    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v2, v3, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_29
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    instance-of v7, v6, Landroid/text/InputFilter$LengthFilter;

    if-eqz v7, :cond_32

    return-void

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_35
    iget-object v3, p0, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    if-nez v3, :cond_42

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1388

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput-object v3, p0, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    :cond_42
    array-length v3, v2

    add-int/2addr v3, v1

    new-array v1, v3, [Landroid/text/InputFilter;

    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    iget-object v3, p0, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    aput-object v3, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b3

    :cond_5a
    if-eqz p3, :cond_62

    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_62
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_6b

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_6b
    if-nez p4, :cond_6e

    return-void

    :cond_6e
    iget-object v3, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v3, v4, :cond_75

    return-void

    :cond_75
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_7d

    return-void

    :cond_7d
    iget-object v4, p0, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    if-nez v4, :cond_82

    return-void

    :cond_82
    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_84
    array-length v6, v3

    if-ge v5, v6, :cond_92

    aget-object v6, v3, v5

    iget-object v7, p0, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    if-ne v6, v7, :cond_8f

    move v4, v5

    goto :goto_92

    :cond_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_92
    :goto_92
    const/4 v5, -0x1

    if-ne v4, v5, :cond_96

    return-void

    :cond_96
    array-length v5, v3

    if-ne v5, v1, :cond_9f

    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_9f
    array-length v5, v3

    sub-int/2addr v5, v1

    new-array v5, v5, [Landroid/text/InputFilter;

    invoke-static {v3, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v4, 0x1

    array-length v6, v3

    sub-int/2addr v6, v4

    sub-int/2addr v6, v1

    invoke-static {v3, v0, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iput-object v2, p0, Landroid/widget/TextView;->mSingleLineLengthFilter:Landroid/text/InputFilter$LengthFilter;

    :goto_b3
    return-void
.end method

.method private applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V
    .registers 9

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1b
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    if-eqz v0, :cond_24

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_24
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSizeUnit:I

    iput v0, p0, Landroid/widget/TextView;->mTextSizeUnit:I

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    int-to-float v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    :cond_34
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_3d
    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    if-eq v0, v1, :cond_48

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    if-nez v0, :cond_48

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    :cond_48
    iget-object v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    iget-object v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iget v4, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    iget v5, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mTextStyle:I

    iget v6, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    if-eqz v0, :cond_65

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    iget v1, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    iget v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    iget v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_65
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    if-eqz v0, :cond_75

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_75
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    if-eqz v0, :cond_7e

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_7e
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    if-eqz v0, :cond_87

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    :cond_87
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    if-eqz v0, :cond_90

    iget v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_90
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_99

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_99
    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontVariationSettings:Ljava/lang/String;

    if-eqz v0, :cond_a2

    iget-object v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_a2
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakStyle:Z

    if-nez v0, :cond_aa

    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakWordStyle:Z

    if-eqz v0, :cond_b5

    :cond_aa
    iget-boolean v0, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakStyle:Z

    iget-boolean v1, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakWordStyle:Z

    iget v2, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakStyle:I

    iget v3, p1, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakWordStyle:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->updateLineBreakConfigFromTextAppearance(ZZII)V

    :cond_b5
    return-void
.end method

.method private assumeLayout()V
    .registers 9

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    move v3, v0

    iget-boolean v1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v1, :cond_1a

    const/high16 v0, 0x100000

    :cond_1a
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, v5

    move v6, v3

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private autoSizeText()V
    .registers 12

    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_7f

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_18

    goto :goto_7f

    :cond_18
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1f

    const/high16 v0, 0x100000

    goto :goto_2d

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2d
    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    sub-int v8, v1, v2

    if-lez v0, :cond_7e

    if-gtz v8, :cond_42

    goto :goto_7e

    :cond_42
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    :try_start_45
    invoke-virtual {v9}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v1, v0

    iput v1, v9, Landroid/graphics/RectF;->right:F

    int-to-float v1, v8

    iput v1, v9, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v9}, Landroid/widget/TextView;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v1

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_79

    const/4 v1, 0x0

    invoke-direct {p0, v1, v10, v1}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    const/4 v3, 0x0

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v1, p0, Landroid/widget/TextView;->mRight:I

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v6, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, v5

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_79
    monitor-exit v9

    goto :goto_80

    :catchall_7b
    move-exception v1

    monitor-exit v9
    :try_end_7d
    .catchall {:try_start_45 .. :try_end_7d} :catchall_7b

    throw v1

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    :goto_80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private bringTextIntoView()Z
    .registers 14

    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    :goto_b
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x50

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1b

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :cond_1b
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView;->mBottom:I

    iget v8, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_52

    if-ne v5, v4, :cond_4e

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_50

    :cond_4e
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_50
    move-object v2, v9

    goto :goto_5e

    :cond_52
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_5e

    if-ne v5, v4, :cond_5b

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_5d

    :cond_5b
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_5d
    move-object v2, v9

    :cond_5e
    :goto_5e
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_89

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    sub-int v11, v10, v9

    if-ge v11, v6, :cond_82

    add-int v11, v10, v9

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v6, 0x2

    sub-int/2addr v11, v12

    goto :goto_88

    :cond_82
    if-gez v5, :cond_87

    sub-int v11, v10, v6

    goto :goto_88

    :cond_87
    move v11, v9

    :goto_88
    goto :goto_a4

    :cond_89
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v9, :cond_9a

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    sub-int v11, v9, v6

    goto :goto_a4

    :cond_9a
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v11, v9

    :goto_a4
    if-ge v8, v7, :cond_a8

    const/4 v3, 0x0

    goto :goto_b2

    :cond_a8
    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v9, v9, 0x70

    if-ne v9, v3, :cond_b1

    sub-int v3, v8, v7

    goto :goto_b2

    :cond_b1
    const/4 v3, 0x0

    :goto_b2
    iget v9, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v11, v9, :cond_bd

    iget v9, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v3, v9, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v4, 0x0

    return v4

    :cond_bd
    :goto_bd
    invoke-virtual {p0, v11, v3}, Landroid/widget/TextView;->scrollTo(II)V

    return v4
.end method

.method private canMarquee()Z
    .registers 5

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v1, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_30

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2e

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_30

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_30

    :cond_2e
    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    :goto_31
    return v1
.end method

.method private changeListenerLocaleTo(Ljava/util/Locale;)V
    .registers 7

    iget-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_60

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v1, v0, Landroid/text/method/DigitsKeyListener;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Landroid/text/method/DigitsKeyListener;

    invoke-static {p1, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    goto :goto_31

    :cond_17
    instance-of v1, v0, Landroid/text/method/DateKeyListener;

    if-eqz v1, :cond_20

    invoke-static {p1}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    goto :goto_31

    :cond_20
    instance-of v1, v0, Landroid/text/method/TimeKeyListener;

    if-eqz v1, :cond_29

    invoke-static {p1}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v0

    goto :goto_31

    :cond_29
    instance-of v1, v0, Landroid/text/method/DateTimeKeyListener;

    if-eqz v1, :cond_5f

    invoke-static {p1}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    :goto_31
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    if-eqz v1, :cond_60

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v3, Landroid/widget/Editor;->mInputType:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_60

    :cond_53
    const/4 v3, 0x2

    if-ne v2, v3, :cond_60

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v3, Landroid/widget/Editor;->mInputType:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_60

    :cond_5f
    return-void

    :cond_60
    :goto_60
    return-void
.end method

.method private checkForRelayout()V
    .registers 11

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v2, :cond_96

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v2, :cond_96

    :cond_13
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_96

    :cond_1b
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_96

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    :goto_42
    move v5, v3

    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v8, v3, v4

    const/4 v9, 0x0

    move-object v3, p0

    move v4, v2

    move-object v6, v7

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v3, v4, :cond_8f

    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_76

    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_76

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_76
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_8f

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_8f

    :cond_88
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_8f
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_9f

    :cond_96
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :goto_9f
    return-void
.end method

.method private checkForResize()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_10
    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_22

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    goto :goto_36

    :cond_22
    iget-object v1, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    iget v1, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v1, :cond_36

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v1, v2, :cond_36

    const/4 v0, 0x1

    :cond_36
    :goto_36
    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_3b
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .registers 7

    array-length v0, p1

    if-nez v0, :cond_4

    return-object p1

    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1f

    aget v3, p1, v2

    if-lez v3, :cond_1c

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    if-gez v4, :cond_1c

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ne v0, v2, :cond_27

    move-object v2, p1

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    :goto_2b
    return-object v2
.end method

.method private clearAutoSizeConfiguration()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iput v1, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private compressText(F)Z
    .registers 8

    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_50

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_50

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_50

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_50

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float v5, v2, v4

    sub-float/2addr v5, p1

    div-float/2addr v5, p1

    cmpl-float v0, v5, v0

    if-lez v0, :cond_50

    const v0, 0x3d8f5c29  # 0.07f

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_50

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v4, v5

    const v1, 0x3ba3d70a  # 0.005f

    sub-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    new-instance v0, Landroid/widget/TextView$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_50
    return v1
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createEditorIfNeeded()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    :cond_b
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .registers 7

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_21

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1e

    const/4 v4, -0x1

    return v4

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-ge v3, v0, :cond_2f

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2f
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    return v3
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 10

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_16

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_16
    const v0, 0x1020022

    const v2, 0x1020021

    const v3, 0x1020020

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch p1, :sswitch_data_1aa

    goto/16 :goto_110

    :sswitch_26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :sswitch_39
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :sswitch_4c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :sswitch_5f
    const/16 v3, 0x1000

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :cond_74
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :sswitch_87
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :sswitch_9a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c3

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v4, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    return v5

    :cond_c3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_d1

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_110

    :cond_d1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_d8

    return v1

    :cond_d8
    return v5

    :cond_d9
    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/xiaomi/mirror/MiuiMirrorStub;->tryToTriggerSend(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_110

    return v5

    :sswitch_e8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_f4

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_110

    :cond_f4
    return v1

    :sswitch_f5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_110

    return v1

    :sswitch_102
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_110

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v5

    :cond_110
    :goto_110
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_15a

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_15a

    const/4 v0, 0x1

    if-eqz p3, :cond_140

    :try_start_11b
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v2, p0, v3, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_12d
    .catch Ljava/lang/AbstractMethodError; {:try_start_11b .. :try_end_12d} :catch_13e
    .catchall {:try_start_11b .. :try_end_12d} :catchall_139

    const/4 v0, 0x0

    if-eqz v2, :cond_135

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    return v5

    :cond_135
    :goto_135
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_140

    :catchall_139
    move-exception v1

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v1

    :catch_13e
    move-exception v2

    goto :goto_135

    :cond_140
    :goto_140
    if-eqz v0, :cond_15a

    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v2, p0, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    if-eqz v2, :cond_15a

    return v4

    :cond_15a
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_19c

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_19c

    const/4 v2, 0x1

    if-eqz p3, :cond_171

    :try_start_165
    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v3, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_16b
    .catch Ljava/lang/AbstractMethodError; {:try_start_165 .. :try_end_16b} :catch_170

    const/4 v2, 0x0

    if-eqz v0, :cond_16f

    return v5

    :cond_16f
    goto :goto_171

    :catch_170
    move-exception v0

    :cond_171
    :goto_171
    if-eqz v2, :cond_18d

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_18b

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_18b

    iput-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_18b
    const/4 v0, 0x2

    return v0

    :cond_18d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v3, 0x101

    if-ne v0, v3, :cond_19c

    invoke-direct {p0, p1}, Landroid/widget/TextView;->isDirectionalNavigationKey(I)Z

    move-result v0

    if-eqz v0, :cond_19c

    return v5

    :cond_19c
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v0, :cond_1a8

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_1a8

    move v1, v5

    goto :goto_1a9

    :cond_1a8
    nop

    :goto_1a9
    return v1

    :sswitch_data_1aa
    .sparse-switch
        0x4 -> :sswitch_102
        0x17 -> :sswitch_f5
        0x3d -> :sswitch_e8
        0x42 -> :sswitch_9a
        0x70 -> :sswitch_87
        0x7c -> :sswitch_5f
        0xa0 -> :sswitch_9a
        0x115 -> :sswitch_4c
        0x116 -> :sswitch_39
        0x117 -> :sswitch_26
    .end sparse-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_b

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_b
    return-void
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .registers 8

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v0, -0x1

    :goto_a
    if-gt v2, v3, :cond_22

    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v5, v5, v4

    invoke-direct {p0, v5, p1}, Landroid/widget/TextView;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v1, v2

    add-int/lit8 v2, v4, 0x1

    goto :goto_a

    :cond_1e
    add-int/lit8 v3, v4, -0x1

    move v1, v3

    goto :goto_a

    :cond_22
    iget-object v4, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    aget v4, v4, v1

    return v4

    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No available text sizes to choose from."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fixFocusableAndClickableSettings()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_d

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_d

    goto :goto_1a

    :cond_d
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_24

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    :goto_24
    return-void
.end method

.method private getBottomVerticalOffset(Z)I
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_17

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v3, :cond_17

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_17
    const/16 v3, 0x50

    if-eq v1, v3, :cond_30

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-ge v4, v3, :cond_30

    const/16 v5, 0x30

    if-ne v1, v5, :cond_2c

    sub-int v0, v3, v4

    goto :goto_30

    :cond_2c
    sub-int v5, v3, v4

    shr-int/lit8 v0, v5, 0x1

    :cond_30
    :goto_30
    return v0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_f
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_26

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    :goto_26
    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2
.end method

.method private getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;
    .registers 3

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeHintLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private getDesiredHeight()I
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .registers 10

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getHeight(Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_18

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_18
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_55

    :cond_32
    if-eqz p2, :cond_55

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_55

    instance-of v6, p1, Landroid/text/DynamicLayout;

    if-nez v6, :cond_40

    instance-of v6, p1, Landroid/text/BoringLayout;

    if-eqz v6, :cond_55

    :cond_40
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-eqz v1, :cond_52

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_52
    add-int/2addr v0, v3

    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    :cond_55
    :goto_55
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v5, :cond_67

    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_6d

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_6d

    :cond_67
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getHorizontalFadingEdgeStrength(FF)F
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_16

    const/high16 v2, 0x3f800000  # 1.0f

    return v2

    :cond_16
    int-to-float v2, v0

    div-float v2, v1, v2

    return v2
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_21
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_48

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_47

    :pswitch_b  #0x6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_14

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_16

    :cond_14
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_16
    goto :goto_47

    :pswitch_17  #0x5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_20

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_22

    :cond_20
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_22
    goto :goto_47

    :pswitch_23  #0x4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_47

    :pswitch_26  #0x3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_47

    :pswitch_29  #0x2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_47

    :pswitch_2c  #0x1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    const v1, 0x800007

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_58

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_47

    :sswitch_38
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_47

    :sswitch_3b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_47

    :sswitch_3e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_47

    :sswitch_41
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_47

    :sswitch_44
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    nop

    :goto_47
    return-object v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_17  #00000005
        :pswitch_b  #00000006
    .end packed-switch

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_44
        0x3 -> :sswitch_41
        0x5 -> :sswitch_3e
        0x800003 -> :sswitch_3b
        0x800005 -> :sswitch_38
    .end sparse-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 5

    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 7

    if-eqz p1, :cond_29

    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_25

    sget-object v3, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_10

    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    :goto_10
    return-object v0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_84

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_84

    :cond_1b
    if-ltz v2, :cond_84

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5b

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_84

    invoke-virtual {v5}, Landroid/widget/Editor;->shouldRenderCursor()Z

    move-result v5

    if-eqz v5, :cond_84

    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_4e

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v5, :cond_39

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_39
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v2, v6, v7}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->updateCursorPosition()V

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_4e
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_84

    :cond_5b
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_78

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v5, :cond_6a

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6a
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v3, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_78
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_84
    :goto_84
    return-object v0
.end method

.method private hasEditorInFocusSearchDirection(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private hasSpannableText()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private invalidateCursor(III)V
    .registers 7

    if-gez p1, :cond_6

    if-gez p2, :cond_6

    if-ltz p3, :cond_1a

    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_1a
    return-void
.end method

.method private isAutoSizeEnabled()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isAutofillable()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isDirectionalNavigationKey(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x13, 0x14, 0x15, 0x16
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x13
        :pswitch_5  #00000013
        :pswitch_5  #00000014
        :pswitch_5  #00000015
        :pswitch_5  #00000016
    .end packed-switch
.end method

.method private isFallbackLineSpacingForBoringLayout()Z
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isMarqueeFadeEnabled()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method private static isMultilineInputType(I)Z
    .registers 3

    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    return v1

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method static isPasswordInputType(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x81

    if-eq v0, v1, :cond_11

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x12

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method private isShowingHint()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method static synthetic lambda$handleClick$1(Landroid/view/textclassifier/TextClassification;)V
    .registers 4

    const-string v0, "TextView"

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    :try_start_e
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_20
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v1

    const-string v2, "Error sending PendingIntent"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    goto :goto_33

    :cond_28
    const-string v1, "No link action to perform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_2e
    const-string v1, "Timeout while classifying text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method

.method private static varargs logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    const-string v0, "TextView"

    if-nez p1, :cond_8

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private notifyListeningManagersAfterTextChanged()V
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_21

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1e

    const-string v1, "TextView"

    const-string/jumbo v2, "notifyAutoFillManagerAfterTextChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_21
    invoke-virtual {p0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_18
    return-object v0
.end method

.method private paste(Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardManagerForUser()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    new-instance v2, Landroid/view/ContentInfo$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    const-wide/16 v3, 0x0

    sput-wide v3, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    return-void
.end method

.method private performAccessibilityActionClick(Landroid/os/Bundle;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_24
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V

    :cond_2b
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_35
    invoke-direct {p0}, Landroid/widget/TextView;->hasSpannableText()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_4b
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_6b

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_6b

    if-eqz v1, :cond_6b

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_6b
    return v0
.end method

.method public static preloadFontCache()V
    .registers 0

    return-void
.end method

.method private prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1a
    return-void
.end method

.method private readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12c

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    move v3, v2

    const/4 v4, -0x1

    if-eqz p4, :cond_19

    sget-object v5, Landroid/widget/TextView;->sAppearanceValues:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v4, :cond_19

    goto/16 :goto_128

    :cond_19
    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_12e

    goto/16 :goto_128

    :pswitch_1f  #0x15
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakWordStyle:Z

    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakWordStyle:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakWordStyle:I

    goto/16 :goto_128

    :pswitch_2b  #0x14
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakStyle:Z

    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakStyle:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakStyle:I

    goto/16 :goto_128

    :pswitch_37  #0x13
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_128

    invoke-static {v4}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_49

    iput-object v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextLocales:Landroid/os/LocaleList;

    :cond_49
    goto/16 :goto_128

    :pswitch_4b  #0x12
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    goto/16 :goto_128

    :pswitch_55  #0x11
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    goto/16 :goto_128

    :pswitch_61  #0x10
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontVariationSettings:Ljava/lang/String;

    goto/16 :goto_128

    :pswitch_69  #0xf
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    goto/16 :goto_128

    :pswitch_71  #0xe
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    goto/16 :goto_128

    :pswitch_7d  #0xd
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    goto/16 :goto_128

    :pswitch_89  #0xc
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_9d

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v4

    if-eqz v4, :cond_9d

    :try_start_95
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;
    :try_end_9b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_95 .. :try_end_9b} :catch_9c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_95 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v4

    :cond_9d
    :goto_9d
    iget-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v4, :cond_a7

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    :cond_a7
    iput-boolean v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    goto/16 :goto_128

    :pswitch_ab  #0xb
    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    goto/16 :goto_128

    :pswitch_b5  #0xa
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    goto/16 :goto_128

    :pswitch_bf  #0x9
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    goto :goto_128

    :pswitch_c8  #0x8
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    goto :goto_128

    :pswitch_d1  #0x7
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    goto :goto_128

    :pswitch_da  #0x6
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_128

    :pswitch_e1  #0x5
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    goto :goto_128

    :pswitch_e8  #0x4
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    goto :goto_128

    :pswitch_f1  #0x3
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_128

    :pswitch_f8  #0x2
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextStyle:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextStyle:I

    goto :goto_128

    :pswitch_101  #0x1
    iget v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    iget v5, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    if-eq v5, v4, :cond_128

    iget-boolean v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    if-nez v4, :cond_128

    const/4 v4, 0x0

    iput-object v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    goto :goto_128

    :pswitch_115  #0x0
    iget v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v4

    iput v4, p3, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSizeUnit:I

    nop

    :cond_128
    :goto_128
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_12c
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_115  #00000000
        :pswitch_101  #00000001
        :pswitch_f8  #00000002
        :pswitch_f1  #00000003
        :pswitch_e8  #00000004
        :pswitch_e1  #00000005
        :pswitch_da  #00000006
        :pswitch_d1  #00000007
        :pswitch_c8  #00000008
        :pswitch_bf  #00000009
        :pswitch_b5  #0000000a
        :pswitch_ab  #0000000b
        :pswitch_89  #0000000c
        :pswitch_7d  #0000000d
        :pswitch_71  #0000000e
        :pswitch_69  #0000000f
        :pswitch_61  #00000010
        :pswitch_55  #00000011
        :pswitch_4b  #00000012
        :pswitch_37  #00000013
        :pswitch_2b  #00000014
        :pswitch_1f  #00000015
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    :cond_e
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_7

    return-void

    :cond_7
    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_2b

    aget-object v5, v1, v4

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, p1, :cond_28

    if-ne v6, p2, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_3d
    return-void
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .registers 6

    const-class v0, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    :goto_7
    if-lez v1, :cond_11

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    return-void
.end method

.method private requestAutofill()V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private requestFocusOnNonEditableSelectableText()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_22
    return-void
.end method

.method private resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V
    .registers 6

    if-ltz p3, :cond_17

    const/16 v0, 0x3e8

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {p1, p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1a
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_10
    return-void
.end method

.method private screenAntiBurnDimPaint()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getScreenAntiBurnEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/TextView;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_1c

    :cond_18
    invoke-virtual {p0}, Landroid/widget/TextView;->getScreenAntiBurnDimRatio()F

    move-result v0

    :goto_1c
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v2, v0, v0, v0, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_33
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    add-int v0, p2, p3

    const-class v1, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    add-int v0, p2, p3

    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 9

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_41

    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v2, v2, Landroid/text/InputFilter;

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    add-int/lit8 v3, v3, 0x1

    :cond_17
    if-eqz v2, :cond_1b

    add-int/lit8 v3, v3, 0x1

    :cond_1b
    if-lez v3, :cond_41

    array-length v4, p2

    add-int/2addr v4, v3

    new-array v4, v4, [Landroid/text/InputFilter;

    array-length v5, p2

    invoke-static {p2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    array-length v3, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    :cond_31
    if-eqz v2, :cond_3d

    array-length v3, p2

    add-int/2addr v3, v1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v5, Landroid/text/InputFilter;

    aput-object v5, v4, v3

    :cond_3d
    invoke-interface {p1, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_41
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_18
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_2d
    return-void
.end method

.method private setInputType(IZ)V
    .registers 10

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    const v3, 0x8000

    and-int/2addr v3, p1

    if-eqz v3, :cond_d

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    and-int/lit16 v3, p1, 0x1000

    if-eqz v3, :cond_15

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_25

    :cond_15
    and-int/lit16 v3, p1, 0x2000

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_25

    :cond_1c
    and-int/lit16 v3, p1, 0x4000

    if-eqz v3, :cond_23

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_25

    :cond_23
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_25
    invoke-static {v2, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v2

    goto :goto_85

    :cond_2a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_54

    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v4

    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_37

    move v5, v2

    goto :goto_38

    :cond_37
    move v5, v1

    :goto_38
    and-int/lit16 v6, p1, 0x2000

    if-eqz v6, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    invoke-static {v4, v5, v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    if-eqz v4, :cond_53

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v5

    and-int/lit8 v6, v5, 0xf

    if-eq v6, v3, :cond_53

    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_52

    or-int/lit16 v5, v5, 0x80

    :cond_52
    move p1, v5

    :cond_53
    goto :goto_85

    :cond_54
    const/4 v2, 0x4

    if-ne v0, v2, :cond_79

    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v2

    and-int/lit16 v3, p1, 0xff0

    sparse-switch v3, :sswitch_data_98

    invoke-static {v2}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    goto :goto_6f

    :sswitch_65
    invoke-static {v2}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v3

    goto :goto_6f

    :sswitch_6a
    invoke-static {v2}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v3

    nop

    :goto_6f
    iget-boolean v4, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v4, :cond_77

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result p1

    :cond_77
    move-object v2, v3

    goto :goto_85

    :cond_79
    const/4 v2, 0x3

    if-ne v0, v2, :cond_81

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    goto :goto_85

    :cond_81
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    :goto_85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    iput-boolean v1, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz p2, :cond_94

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v2, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_97

    :cond_94
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    :goto_97
    return-void

    :sswitch_data_98
    .sparse-switch
        0x10 -> :sswitch_6a
        0x20 -> :sswitch_65
    .end sparse-switch
.end method

.method private setInputTypeFromEditor()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v1}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v1

    iput v1, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_a
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/Editor;->mInputType:I

    :goto_11
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    return-void
.end method

.method private setInputTypeSingleLine(Z)V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_21

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_21

    :cond_18
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_21
    :goto_21
    return-void
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_28

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_1f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_28
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardManagerForUser()Landroid/content/ClipboardManager;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    const/4 v1, 0x1

    return v1

    :catchall_10
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private setRawTextSize(FZ)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p2, :cond_21

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_21
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    move v2, v1

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    if-eqz v2, :cond_81

    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v3, :cond_1c

    new-instance v4, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    iput-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1c
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v0, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v0, v3, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, v3, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_4f

    :cond_4b
    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_4f
    if-eqz p2, :cond_74

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p2, v3, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_78

    :cond_74
    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :goto_78
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    :cond_81
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    if-nez p1, :cond_c

    const-string v3, ""

    goto :goto_e

    :cond_c
    move-object/from16 v3, p1

    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_18
    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_23

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    :cond_23
    instance-of v4, v3, Landroid/text/Spanned;

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    move-object v4, v3

    check-cast v4, Landroid/text/Spanned;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4f

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iput v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_4a

    :cond_45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_4a
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4f
    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v4, v4

    const/4 v6, 0x0

    :goto_53
    if-ge v6, v4, :cond_6d

    iget-object v7, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v7, v7, v6

    const/4 v9, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sget-object v11, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-interface/range {v7 .. v13}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_6a

    move-object v3, v7

    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    :cond_6d
    const-string v6, ""

    if-eqz p3, :cond_8a

    iget-object v7, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_83

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v8, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-direct {v0, v8, v2, v7, v9}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_8c

    :cond_83
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v0, v6, v2, v2, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_8a
    move/from16 v7, p4

    :goto_8c
    const/4 v8, 0x0

    iget-object v9, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v9, :cond_98

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_98

    const/4 v8, 0x1

    :cond_98
    instance-of v9, v3, Landroid/text/PrecomputedText;

    if-eqz v9, :cond_a0

    move-object v9, v3

    check-cast v9, Landroid/text/PrecomputedText;

    goto :goto_a1

    :cond_a0
    const/4 v9, 0x0

    :goto_a1
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v11, :cond_12a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v11

    if-nez v11, :cond_12a

    if-eqz v8, :cond_af

    goto/16 :goto_12a

    :cond_af
    if-eqz v9, :cond_111

    iget-object v11, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v11, :cond_bb

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v11

    iput-object v11, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_bb
    nop

    invoke-virtual {v9}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    iget-object v14, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v15, v0, Landroid/widget/TextView;->mBreakStrategy:I

    iget v11, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    iget v5, v0, Landroid/widget/TextView;->mLineBreakStyle:I

    iget v10, v0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    invoke-static {v5, v10}, Landroid/graphics/text/LineBreakConfig;->getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;

    move-result-object v17

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v5

    packed-switch v5, :pswitch_data_23e

    goto :goto_110

    :pswitch_dc  #0x1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v9

    goto :goto_110

    :pswitch_e5  #0x0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PrecomputedText\'s Parameters don\'t match the parameters of this TextView.Consider using setTextMetricsParams(precomputedText.getParams()) to override the settings of this TextView: PrecomputedText: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "TextView: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_110
    goto :goto_144

    :cond_111
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v5, :cond_123

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_11a

    goto :goto_123

    :cond_11a
    instance-of v5, v3, Landroid/widget/TextView$CharWrapper;

    if-nez v5, :cond_144

    invoke-static {v3}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_144

    :cond_123
    :goto_123
    iget-object v5, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v5, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    goto :goto_144

    :cond_12a
    :goto_12a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->forgetUndoRedo()V

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->scheduleRestartInputForSetText()V

    iget-object v5, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {v5, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v5

    move-object v3, v5

    iget-object v10, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {v0, v5, v10}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    nop

    :cond_144
    :goto_144
    const/4 v5, 0x0

    iget-object v10, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_157

    iget-object v10, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v10}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->textOrSpanChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    :cond_157
    iget v10, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v10, :cond_198

    sget-object v10, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v10, :cond_16b

    instance-of v10, v3, Landroid/text/Spannable;

    if-eqz v10, :cond_164

    goto :goto_16b

    :cond_164
    iget-object v10, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v10, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v10

    goto :goto_16e

    :cond_16b
    :goto_16b
    move-object v10, v3

    check-cast v10, Landroid/text/Spannable;

    :goto_16e
    iget v11, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {v10, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v11

    if-eqz v11, :cond_198

    move-object v3, v10

    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v1, v11, :cond_17e

    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_180

    :cond_17e
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_180
    move-object v1, v11

    invoke-direct {v0, v3}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_187

    const/4 v5, 0x2

    :cond_187
    iget-boolean v11, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v11, :cond_198

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v11

    if-nez v11, :cond_198

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_198
    iput-object v1, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {v0, v3}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v10, :cond_1a4

    iput-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_1aa

    :cond_1a4
    invoke-interface {v10, v3, v0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :goto_1aa
    iget-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    if-nez v10, :cond_1b0

    iput-object v6, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :cond_1b0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    instance-of v10, v3, Landroid/text/Spannable;

    if-eqz v10, :cond_20b

    iget-boolean v10, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v10, :cond_20b

    move-object v10, v3

    check-cast v10, Landroid/text/Spannable;

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v10, v2, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/widget/TextView$ChangeWatcher;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1cd
    if-ge v13, v12, :cond_1d7

    aget-object v14, v11, v13

    invoke-interface {v10, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1cd

    :cond_1d7
    iget-object v13, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v13, :cond_1e3

    new-instance v13, Landroid/widget/TextView$ChangeWatcher;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$ChangeWatcher-IA;)V

    iput-object v13, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_1e3
    iget-object v13, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const v14, 0x640012

    invoke-interface {v10, v13, v2, v6, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v13, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v13, :cond_1f2

    invoke-virtual {v13, v10}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    :cond_1f2
    iget-object v13, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v13, :cond_1fb

    const/16 v14, 0x12

    invoke-interface {v10, v13, v2, v6, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1fb
    iget-object v13, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v13, :cond_20b

    move-object v14, v3

    check-cast v14, Landroid/text/Spannable;

    invoke-interface {v13, v0, v14}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    iget-object v13, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v13, :cond_20b

    iput-boolean v2, v13, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_20b
    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v10, :cond_212

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_212
    invoke-virtual {v0, v3, v2, v7, v6}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {v0, v3, v2, v7, v6}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v5, v11, :cond_220

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_225

    :cond_220
    if-ne v5, v10, :cond_225

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_225
    :goto_225
    if-eqz v8, :cond_22e

    move-object v2, v3

    check-cast v2, Landroid/text/Editable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    goto :goto_231

    :cond_22e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->notifyListeningManagersAfterTextChanged()V

    :goto_231
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_23d

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->maybeFireScheduledRestartInputForSetText()V

    :cond_23d
    return-void

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_e5  #00000000
        :pswitch_dc  #00000001
    .end packed-switch
.end method

.method private setTextInternal(Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    iput-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    instance-of v0, p1, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_15

    move-object v1, p1

    check-cast v1, Landroid/text/PrecomputedText;

    :cond_15
    iput-object v1, p0, Landroid/widget/TextView;->mPrecomputed:Landroid/text/PrecomputedText;

    return-void
.end method

.method private setTextSizeInternal(IFZ)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_f
    iput p1, p0, Landroid/widget/TextView;->mTextSizeUnit:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2, p3}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    return-void
.end method

.method private setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V
    .registers 7

    if-nez p1, :cond_d

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_2d

    :cond_d
    if-eqz p1, :cond_13

    invoke-direct {p0, p1, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_2d

    :cond_13
    packed-switch p3, :pswitch_data_2e

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_2d

    :pswitch_1b  #0x3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_2d

    :pswitch_21  #0x2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    goto :goto_2d

    :pswitch_27  #0x1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p4, p5}, Landroid/widget/TextView;->resolveStyleAndSetTypeface(Landroid/graphics/Typeface;II)V

    nop

    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_21  #00000002
        :pswitch_1b  #00000003
    .end packed-switch
.end method

.method private setupAutoSizeText()Z
    .registers 8

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    iget-boolean v0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-nez v0, :cond_3e

    :cond_14
    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iget v2, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    sub-float/2addr v0, v2

    iget v2, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_38

    iget v4, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    int-to-float v5, v3

    iget v6, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_38
    invoke-direct {p0, v2}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    :cond_3e
    iput-boolean v1, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    goto :goto_44

    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    :goto_44
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    return v0
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    if-lez v0, :cond_1e

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    invoke-direct {p0, v1}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    :cond_1e
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_9

    move v4, v3

    goto :goto_a

    :cond_9
    move v4, v2

    :goto_a
    iput-boolean v4, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-eqz v4, :cond_20

    iput v3, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    :cond_20
    return v4
.end method

.method private shareSelectedText()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_3d
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_27

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_26

    const/16 v3, 0x30

    if-ne v0, v3, :cond_27

    :cond_26
    return v2

    :cond_27
    return v1
.end method

.method private showAutofillDialog()Z
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->showAutofillDialog(Landroid/view/View;)Z

    move-result v1

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private startStopMarquee(Z)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_f

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_f

    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_f
    :goto_f
    return-void
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .registers 11

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_9
    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_1a

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_1d

    :cond_1a
    invoke-virtual {v2}, Landroid/text/TextPaint;->reset()V

    :goto_1d
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    nop

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-direct {p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_82

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_85

    :cond_82
    const v4, 0x7fffffff

    :goto_85
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    iget v7, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    invoke-static {v4, v7}, Landroid/graphics/text/LineBreakConfig;->getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_aa

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_aa

    return v5

    :cond_aa
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_b6

    return v5

    :cond_b6
    return v6
.end method

.method private unregisterForPreDraw()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    return-void
.end method

.method private updateCursorVisibleInternal()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisibleFromAttr:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/TextView;->mImeIsConsumingInput:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v1, v0, :cond_2c

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v0, v1, Landroid/widget/Editor;->mCursorVisible:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2c
    return-void
.end method

.method private updateLineBreakConfigFromTextAppearance(ZZII)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget v1, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    if-eq v1, p3, :cond_a

    iput p3, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    const/4 v0, 0x1

    :cond_a
    if-eqz p2, :cond_13

    iget v1, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    if-eq v1, p4, :cond_13

    iput p4, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    const/4 v0, 0x1

    :cond_13
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_22
    return-void
.end method

.method private updateTextColors()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v2, v4, :cond_13

    iput v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v0, 0x1

    :cond_13
    iget-object v4, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_26

    invoke-virtual {v4, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v4, Landroid/text/TextPaint;->linkColor:I

    if-eq v2, v4, :cond_26

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v2, v4, Landroid/text/TextPaint;->linkColor:I

    const/4 v0, 0x1

    :cond_26
    iget-object v4, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_3d

    invoke-virtual {v4, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v3, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v2, v3, :cond_3d

    iput v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    if-eqz v0, :cond_49

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_46
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_49
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .registers 2

    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesManagerForUser()Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iput-object v2, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    return-void
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .registers 8

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string/jumbo v2, "px) is less or equal to (0px)"

    if-lez v1, :cond_65

    cmpg-float v1, p2, p1

    if-lez v1, :cond_3a

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    iput p1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    iput p2, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    iput p3, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The auto-size step granularity ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Minimum auto-size text size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    if-eqz p3, :cond_75

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_6d

    if-ltz v0, :cond_6d

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_24

    goto :goto_6d

    :cond_24
    new-array v8, v1, [Landroid/graphics/RectF;

    new-instance v2, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    move-object v9, v2

    add-int v5, v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v1, :cond_65

    add-int v4, v0, v3

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBoundsFlags(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_62

    add-int v5, v0, v3

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBounds(I)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_62

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    aput-object v5, v8, v3

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_65
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, p2, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_6d
    :goto_6d
    const-string v2, "TextView"

    const-string v3, "Invalid arguments for accessibility character locations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_75
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setLayoutSize(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setTextSizeInPx(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSizeUnit()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setTextSizeUnit(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    :cond_a1
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_b

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v0, :cond_2f

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2f
    return-void
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    const-string v1, "TextView"

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot autofill non-editable TextView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->describeContents()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot be autofilled into "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4b
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Landroid/view/ContentInfo$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v1}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    return-void
.end method

.method public beginBatchEdit()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_7
    return-void
.end method

.method public bringPointIntoView(I)Z
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iput v1, v0, Landroid/widget/TextView;->mDeferScroll:I

    return v3

    :cond_e
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_1a

    :cond_18
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    :goto_1a
    if-nez v4, :cond_1d

    return v2

    :cond_1d
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    sget-object v6, Landroid/widget/TextView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1f0

    const/4 v6, 0x0

    goto :goto_41

    :pswitch_32  #0x4
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    neg-int v6, v6

    goto :goto_41

    :pswitch_38  #0x3
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    goto :goto_41

    :pswitch_3d  #0x2
    const/4 v6, -0x1

    goto :goto_41

    :pswitch_3f  #0x1
    const/4 v6, 0x1

    nop

    :goto_41
    if-lez v6, :cond_44

    const/4 v3, 0x1

    :cond_44
    invoke-virtual {v4, v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v4, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v12

    iget v13, v0, Landroid/widget/TextView;->mRight:I

    iget v14, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v0, Landroid/widget/TextView;->mBottom:I

    iget v15, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    iget-boolean v15, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-nez v15, :cond_99

    sub-int v15, v11, v10

    if-le v15, v13, :cond_99

    if-le v11, v7, :cond_99

    add-int v15, v10, v13

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_99
    sub-int v15, v9, v8

    div-int/lit8 v15, v15, 0x2

    move/from16 v16, v15

    div-int/lit8 v1, v14, 0x4

    move/from16 v17, v2

    move/from16 v2, v16

    if-le v2, v1, :cond_ab

    div-int/lit8 v16, v14, 0x4

    move/from16 v2, v16

    :cond_ab
    div-int/lit8 v1, v13, 0x4

    if-le v15, v1, :cond_b1

    div-int/lit8 v15, v13, 0x4

    :cond_b1
    iget v1, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v16, v3

    iget v3, v0, Landroid/widget/TextView;->mScrollY:I

    move-object/from16 v18, v4

    sub-int v4, v8, v3

    if-ge v4, v2, :cond_bf

    sub-int v3, v8, v2

    :cond_bf
    sub-int v4, v9, v3

    move/from16 v19, v3

    sub-int v3, v14, v2

    if-le v4, v3, :cond_cc

    sub-int v3, v14, v2

    sub-int v3, v9, v3

    goto :goto_ce

    :cond_cc
    move/from16 v3, v19

    :goto_ce
    sub-int v4, v12, v3

    if-ge v4, v14, :cond_d4

    sub-int v3, v12, v14

    :cond_d4
    rsub-int/lit8 v4, v3, 0x0

    if-lez v4, :cond_d9

    const/4 v3, 0x0

    :cond_d9
    if-eqz v6, :cond_f0

    sub-int v4, v7, v1

    if-ge v4, v15, :cond_e1

    sub-int v1, v7, v15

    :cond_e1
    sub-int v4, v7, v1

    move/from16 v19, v1

    sub-int v1, v13, v15

    if-le v4, v1, :cond_ee

    sub-int v1, v13, v15

    sub-int v1, v7, v1

    goto :goto_f0

    :cond_ee
    move/from16 v1, v19

    :cond_f0
    :goto_f0
    if-gez v6, :cond_fe

    sub-int v4, v10, v1

    if-lez v4, :cond_f7

    move v1, v10

    :cond_f7
    sub-int v4, v11, v1

    if-ge v4, v13, :cond_146

    sub-int v1, v11, v13

    goto :goto_146

    :cond_fe
    if-lez v6, :cond_10c

    sub-int v4, v11, v1

    if-ge v4, v13, :cond_106

    sub-int v1, v11, v13

    :cond_106
    sub-int v4, v10, v1

    if-lez v4, :cond_146

    move v1, v10

    goto :goto_146

    :cond_10c
    sub-int v4, v11, v10

    if-gt v4, v13, :cond_119

    sub-int v4, v11, v10

    sub-int v4, v13, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v10, v4

    goto :goto_146

    :cond_119
    sub-int v4, v11, v15

    if-le v7, v4, :cond_120

    sub-int v1, v11, v13

    goto :goto_146

    :cond_120
    add-int v4, v10, v15

    if-ge v7, v4, :cond_126

    move v1, v10

    goto :goto_146

    :cond_126
    if-le v10, v1, :cond_12a

    move v1, v10

    goto :goto_146

    :cond_12a
    add-int v4, v1, v13

    if-ge v11, v4, :cond_131

    sub-int v1, v11, v13

    goto :goto_146

    :cond_131
    sub-int v4, v7, v1

    if-ge v4, v15, :cond_137

    sub-int v1, v7, v15

    :cond_137
    sub-int v4, v7, v1

    move/from16 v19, v1

    sub-int v1, v13, v15

    if-le v4, v1, :cond_144

    sub-int v1, v13, v15

    sub-int v1, v7, v1

    goto :goto_146

    :cond_144
    move/from16 v1, v19

    :cond_146
    :goto_146
    iget v4, v0, Landroid/widget/TextView;->mScrollX:I

    if-ne v1, v4, :cond_15b

    iget v4, v0, Landroid/widget/TextView;->mScrollY:I

    if-eq v3, v4, :cond_14f

    goto :goto_15b

    :cond_14f
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move v4, v10

    move/from16 v21, v11

    move/from16 v2, v17

    goto :goto_1be

    :cond_15b
    :goto_15b
    iget-object v4, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-nez v4, :cond_16c

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->scrollTo(II)V

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move v4, v10

    move/from16 v21, v11

    goto :goto_1bd

    :cond_16c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v19

    move v4, v10

    move/from16 v21, v11

    iget-wide v10, v0, Landroid/widget/TextView;->mLastScroll:J

    sub-long v19, v19, v10

    iget v10, v0, Landroid/widget/TextView;->mScrollX:I

    sub-int v10, v1, v10

    iget v11, v0, Landroid/widget/TextView;->mScrollY:I

    sub-int v11, v3, v11

    const-wide/16 v22, 0xfa

    cmp-long v22, v19, v22

    if-lez v22, :cond_1a1

    move/from16 v22, v1

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move/from16 v23, v2

    iget v2, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v3

    iget v3, v0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2, v3, v10, v11}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1b7

    :cond_1a1
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1b4

    iget-object v1, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1b4
    invoke-virtual {v0, v10, v11}, Landroid/widget/TextView;->scrollBy(II)V

    :goto_1b7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/TextView;->mLastScroll:J

    :goto_1bd
    const/4 v2, 0x1

    :goto_1be
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1ef

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1cf

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_1cf
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    add-int/lit8 v3, v7, -0x2

    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v1, v3, v8, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v5}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/widget/TextView;->mScrollX:I

    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    const/4 v2, 0x1

    :cond_1ef
    return v2

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_3f  #00000001
        :pswitch_3d  #00000002
        :pswitch_38  #00000003
        :pswitch_32  #00000004
    .end packed-switch
.end method

.method canCopy()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v1
.end method

.method canCut()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_26

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    return v1
.end method

.method canPaste()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_26

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardManagerForUser()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method canPasteAsPlainText()Z
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardManagerForUser()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Landroid/content/ClipDescription;->isStyledText()Z

    move-result v3

    if-nez v3, :cond_29

    :cond_20
    const-string/jumbo v3, "text/html"

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method canProcessText()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    return v0
.end method

.method canRedo()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method canReplace()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    nop

    :goto_2b
    return v1
.end method

.method canRequestAutofill()Z
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    return v1

    :cond_19
    return v1
.end method

.method canSelectAllText()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method canSelectText()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method canShare()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method canUndo()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public cancelLongPress()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_a
    return-void
.end method

.method public clearComposingText()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_b
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1b

    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_16

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_20
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public debug(I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "} scroll={"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_c9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c9

    :cond_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c9
    :goto_c9
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected deleteText_internal(II)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public drawableHotspotChanged(FF)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    if-eqz v3, :cond_14

    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 7

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_17
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_21
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    :cond_24
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_4a

    aget-object v4, v1, v3

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_4a
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v2, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v2

    :goto_10
    const-string/jumbo v3, "text:ellipsize"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    const-string/jumbo v3, "text:textSize"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v2

    const-string/jumbo v3, "text:scaledTextSize"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v2

    const-string/jumbo v3, "text:typefaceStyle"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    const-string/jumbo v3, "text:selectionStart"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-string/jumbo v3, "text:selectionEnd"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    const-string/jumbo v3, "text:curTextColor"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v2, :cond_55

    goto :goto_59

    :cond_55
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_59
    const-string/jumbo v2, "text:text"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const-string/jumbo v2, "text:gravity"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public endBatchEdit()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    :cond_7
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .registers 4

    invoke-super {p0}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "passwordAuto"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    :cond_1c
    return-object v0
.end method

.method public getAutofillType()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseline()I
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getBaselineOffset()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_e
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBreakStrategy()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method final getClipboardManagerForUser()Landroid/content/ClipboardManager;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/content/ClipboardManager;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getServiceManagerForUser(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_7

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public getCompoundDrawableTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mBlendMode:Landroid/graphics/BlendMode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_d
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .registers 8

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v0, :cond_20

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v6, v3, v2

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    aput-object v2, v3, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    aput-object v1, v3, v4

    return-object v3

    :cond_20
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v6, v3, v2

    aput-object v6, v3, v5

    aput-object v6, v3, v1

    aput-object v6, v3, v4

    return-object v3
.end method

.method public getCompoundPaddingBottom()I
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_c

    goto :goto_15

    :cond_c
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    return v1

    :cond_15
    :goto_15
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    return v1
.end method

.method public getCompoundPaddingEnd()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    :pswitch_f  #0x1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f  #00000001
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_c

    goto :goto_15

    :cond_c
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    return v1

    :cond_15
    :goto_15
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    return v1
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_c

    goto :goto_15

    :cond_c
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    return v1

    :cond_15
    :goto_15
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    return v1
.end method

.method public getCompoundPaddingStart()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    :pswitch_f  #0x1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f  #00000001
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_c

    goto :goto_15

    :cond_c
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    return v1

    :cond_15
    :goto_15
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    return v1
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    :goto_9
    return v0
.end method

.method public final getCurrentTextColor()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_8
    return-object v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_8
    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/text/Editable;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getEditorForTesting()Landroid/widget/Editor;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    :goto_8
    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .registers 7

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    return v0

    :cond_a
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    return v0

    :cond_20
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-lt v3, v2, :cond_39

    return v1

    :cond_39
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-ne v4, v5, :cond_45

    add-int v5, v1, v2

    sub-int/2addr v5, v3

    return v5

    :cond_45
    const/16 v5, 0x50

    if-ne v4, v5, :cond_4a

    return v1

    :cond_4a
    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    return v5
.end method

.method public getExtendedPaddingTop()I
    .registers 7

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    return v0

    :cond_a
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    return v0

    :cond_20
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-lt v3, v2, :cond_39

    return v0

    :cond_39
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-ne v4, v5, :cond_42

    return v0

    :cond_42
    const/16 v5, 0x50

    if-ne v4, v5, :cond_4a

    add-int v5, v0, v2

    sub-int/2addr v5, v3

    return v5

    :cond_4a
    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    return v5
.end method

.method protected getFadeHeight(Z)I
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected getFadeTop(Z)I
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_14

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_14
    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFirstBaselineToTopHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_12

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_84

    if-lt v1, v0, :cond_1c

    goto :goto_84

    :cond_1c
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_4d

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->right:I

    goto :goto_ac

    :cond_4d
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_6a

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v5, :cond_5c

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_5c
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v0, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_6a
    sget-object v5, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v5

    :try_start_6d
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    iget v6, v5, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    monitor-exit v5

    goto :goto_ac

    :catchall_81
    move-exception v2

    monitor-exit v5
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_81

    throw v2

    :cond_84
    :goto_84
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x2

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    nop

    :goto_ac
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x30

    if-eq v5, v6, :cond_c1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v4, v2

    :cond_c1
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHyphenationFrequency()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getImeHintLocales()Landroid/os/LocaleList;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getImeOptions()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getIncludeFontPadding()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return-object v1

    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_19

    if-nez p1, :cond_14

    return-object v1

    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    :cond_19
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_2f

    if-nez p1, :cond_24

    return-object v1

    :cond_24
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    :cond_2f
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    :goto_8
    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .registers 5

    sparse-switch p1, :sswitch_data_42

    goto :goto_3d

    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    return-object v1

    :sswitch_1e
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    return-object v1

    :cond_3c
    nop

    :cond_3d
    :goto_3d
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    return-object v0

    :sswitch_data_42
    .sparse-switch
        0x4 -> :sswitch_1e
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public getJustificationMode()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mJustificationMode:I

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :goto_8
    return-object v0
.end method

.method public getLastBaselineToBottomHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v1

    return v1

    :cond_22
    return v1

    :cond_23
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3b

    return v1

    :cond_3b
    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v1

    return v1

    :cond_43
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLetterSpacing()F
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 7

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    return v0

    :cond_b
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_21

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_21
    if-eqz p2, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_2a
    add-int v2, v0, v1

    return v2
.end method

.method public getLineBreakStyle()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    return v0
.end method

.method public getLineBreakWordStyle()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    return v0
.end method

.method public getLineCount()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getLineHeight()I
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMaxHeight()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMaxLines()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMaxWidth()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMinEms()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMinHeight()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMinLines()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getMinWidth()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .registers 4

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    return v1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v1

    return v1

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    iget v0, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_47

    const/4 v2, 0x0

    return v2

    :cond_47
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    move-result v2

    return v2

    :cond_4c
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method protected getRightPaddingOffset()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScaledTextSize()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-le v0, v1, :cond_19

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1d

    :cond_19
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSelectionEnd()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method final getServiceManagerForUser(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getShadowColor()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 5
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseTextPaddingForUiTranslation:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTranslationCallback()Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    if-eqz v0, :cond_26

    instance-of v1, v0, Landroid/widget/TextViewTranslationCallback;

    if-eqz v1, :cond_26

    move-object v1, v0

    check-cast v1, Landroid/widget/TextViewTranslationCallback;

    invoke-virtual {v1}, Landroid/widget/TextViewTranslationCallback;->isTextPaddingEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Landroid/widget/TextViewTranslationCallback;->isShowingTranslation()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextViewTranslationCallback;->getPaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_26
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTextClassificationContext()Landroid/view/textclassifier/TextClassificationContext;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object v0
.end method

.method final getTextClassificationManagerForUser()Landroid/view/textclassifier/TextClassificationManager;
    .registers 3

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getServiceManagerForUser(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    return-object v0
.end method

.method getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassificationManagerForUser()Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "edittext"

    goto :goto_26

    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo v1, "textview"

    goto :goto_26

    :cond_23
    const-string/jumbo v1, "nosel-textview"

    :goto_26
    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView;->mTextClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v3, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v3, :cond_42

    invoke-virtual {v0, v2, v3}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    goto :goto_48

    :cond_42
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    :goto_48
    goto :goto_4d

    :cond_49
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    :cond_4d
    :goto_4d
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassificationSession:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassificationManagerForUser()Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    return-object v1

    :cond_f
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v1

    :cond_12
    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextCursorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_12
    iget-object v0, p0, Landroid/widget/TextView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-ne v0, v3, :cond_38

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    if-eq v4, v2, :cond_35

    const/4 v2, 0x2

    if-ne v4, v2, :cond_32

    goto :goto_35

    :cond_32
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v2

    :cond_35
    :goto_35
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v2

    :cond_38
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_3f

    move v1, v2

    :cond_3f
    move v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_62

    if-eqz v0, :cond_5e

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_60

    :pswitch_4c  #0x7
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_4f  #0x6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_52  #0x5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_55  #0x4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_58  #0x3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :pswitch_5b  #0x2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    :cond_5e
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_60
    return-object v1

    nop

    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_5b  #00000002
        :pswitch_58  #00000003
        :pswitch_55  #00000004
        :pswitch_52  #00000005
        :pswitch_4f  #00000006
        :pswitch_4c  #00000007
    .end packed-switch
.end method

.method public getTextLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParams()Landroid/text/PrecomputedText$Params;
    .registers 8

    new-instance v6, Landroid/text/PrecomputedText$Params;

    new-instance v1, Landroid/text/TextPaint;

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget v0, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    iget v2, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    invoke-static {v0, v2}, Landroid/graphics/text/LineBreakConfig;->getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget v5, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    return-object v6
.end method

.method public getTextScaleX()F
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSelectHandle()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextSelectHandle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextSelectHandle:Landroid/graphics/drawable/Drawable;

    :cond_12
    iget-object v0, p0, Landroid/widget/TextView;->mTextSelectHandle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    :cond_12
    iget-object v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextSelectHandleRight:Landroid/graphics/drawable/Drawable;

    :cond_12
    iget-object v0, p0, Landroid/widget/TextView;->mTextSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method final getTextServicesManagerForUser()Landroid/view/textservice/TextServicesManager;
    .registers 3

    const-class v0, Landroid/view/textservice/TextServicesManager;

    const-string v1, "android"

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getServiceManagerForUser(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method public getTextSize()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextSizeUnit()I
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mTextSizeUnit:I

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mOriginalTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v2, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    return-object v0

    :cond_17
    new-array v0, v2, [Landroid/text/style/URLSpan;

    return-object v0
.end method

.method getVerticalOffset(Z)I
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_17

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v3, :cond_17

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_17
    const/16 v3, 0x30

    if-eq v1, v3, :cond_30

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-ge v4, v3, :cond_30

    const/16 v5, 0x50

    if-ne v1, v5, :cond_2c

    sub-int v0, v3, v4

    goto :goto_30

    :cond_2c
    sub-int v5, v3, v4

    shr-int/lit8 v0, v5, 0x1

    :cond_30
    :goto_30
    return v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_43

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_22
    return v2

    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_42

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v2

    :cond_42
    return v1

    :cond_43
    :goto_43
    return v1
.end method

.method public handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z
    .registers 13

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_4e

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ltz v1, :cond_4e

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_4e

    if-ge v1, v2, :cond_4e

    new-instance v3, Landroid/view/textclassifier/TextClassification$Request$Builder;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v1, v2}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v3

    new-instance v4, Landroid/widget/TextView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Landroid/widget/TextView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)V

    new-instance v5, Landroid/widget/TextView$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/widget/TextView$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    const/4 v6, 0x1

    return v6

    :cond_4e
    const/4 v0, 0x0

    return v0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :goto_c
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_15

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_15
    if-eqz v0, :cond_41

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_25

    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_3a

    :cond_25
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_3a
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    :cond_41
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_27

    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method hasPasswordTransformationMethod()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v0, :cond_10

    if-lez v1, :cond_10

    if-eq v0, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method public hideErrorIfUnchanged()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method

.method public hideFloatingToolbar(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    :cond_7
    return-void
.end method

.method invalidateCursor()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method invalidateCursorPath()V
    .registers 10

    iget-boolean v0, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto/16 :goto_88

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_71

    sget-object v2, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v2

    :try_start_20
    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_34

    const/high16 v3, 0x3f800000  # 1.0f

    :cond_34
    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v1

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, v0

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    add-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v1

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    add-float/2addr v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->invalidate(IIII)V

    monitor-exit v2

    goto :goto_88

    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_20 .. :try_end_70} :catchall_6e

    throw v3

    :cond_71
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/TextView;->invalidate(IIII)V

    :goto_88
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    iget v3, p0, Landroid/widget/TextView;->mScrollY:I

    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v4, :cond_ad

    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    if-ne p1, v5, :cond_37

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v2, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    const/4 v0, 0x1

    goto/16 :goto_ad

    :cond_37
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v6

    if-ne p1, v5, :cond_61

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v9, v10

    add-int/2addr v2, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    const/4 v0, 0x1

    goto :goto_ad

    :cond_61
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    if-ne p1, v5, :cond_83

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v2, v9

    iget v6, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v3, v6

    const/4 v0, 0x1

    :cond_82
    goto :goto_ad

    :cond_83
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    if-ne p1, v5, :cond_82

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v9, v8, v9

    div-int/2addr v9, v6

    add-int/2addr v9, v5

    add-int/2addr v2, v9

    iget v6, p0, Landroid/widget/TextView;->mBottom:I

    iget v9, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v6, v9

    iget v9, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v6, v9

    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v6, v9

    add-int/2addr v3, v6

    const/4 v0, 0x1

    :cond_ad
    :goto_ad
    if-eqz v0, :cond_be

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    :cond_be
    if-nez v0, :cond_c3

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c3
    return-void
.end method

.method invalidateRegion(IIZ)V
    .registers 16

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_8a

    :cond_9
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-lez v0, :cond_1e

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1e
    if-ne p1, p2, :cond_22

    move v2, v0

    goto :goto_28

    :cond_22
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    :goto_28
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-eqz p3, :cond_4c

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_4c

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4c

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4c
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int/2addr v5, v6

    if-ne v0, v2, :cond_73

    if-nez p3, :cond_73

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    goto :goto_7d

    :cond_73
    move v6, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    :goto_7d
    iget v8, p0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v8, v6

    add-int v9, v5, v1

    iget v10, p0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v10, v7

    add-int v11, v5, v3

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/TextView;->invalidate(IIII)V

    :goto_8a
    return-void
.end method

.method public isAccessibilitySelectionExtendable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isAllCaps()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/text/method/AllCapsTransformationMethod;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isAnyPasswordInputType()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public isCursorVisible()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    :goto_8
    return v0
.end method

.method public isCursorVisibleFromAttr()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisibleFromAttr:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 6

    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1b

    nop

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    iput v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    :cond_1b
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    if-ne v0, v3, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method public isElegantTextHeight()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    return v0
.end method

.method public isFallbackLineSpacing()Z
    .registers 2

    iget v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isFallbackLineSpacingForStaticLayout()Z
    .registers 4

    iget v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method isFromPrimePointer(Landroid/view/MotionEvent;Z)Z
    .registers 9

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/TextView;->mPrimePointerId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_11

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/TextView;->mPrimePointerId:I

    iput-boolean p2, p0, Landroid/widget/TextView;->mIsPrimePointerFromHandleView:Z

    goto :goto_1f

    :cond_11
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-eq v1, v5, :cond_1f

    iget-boolean v1, p0, Landroid/widget/TextView;->mIsPrimePointerFromHandleView:Z

    if-eqz v1, :cond_1e

    if-eqz p2, :cond_1e

    move v4, v2

    :cond_1e
    move v0, v4

    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    :cond_2c
    iput v3, p0, Landroid/widget/TextView;->mPrimePointerId:I

    :cond_2e
    return v0
.end method

.method public final isHorizontallyScrollable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method isInBatchEditMode()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_10

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    :cond_10
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    return v1
.end method

.method public isInExtractedMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodTarget()Z
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public isPositionVisible(FF)Z
    .registers 10

    sget-object v0, Landroid/widget/TextView;->TEMP_POSITION:[F

    monitor-enter v0

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_5
    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    move-object v4, p0

    :goto_b
    if-eqz v4, :cond_7d

    if-eq v4, p0, :cond_23

    aget v5, v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v1, v2

    aget v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v1, v3

    :cond_23
    aget v5, v1, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_7b

    aget v5, v1, v3

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_7b

    aget v5, v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_7b

    aget v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_47

    goto :goto_7b

    :cond_47
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_58

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_58
    aget v5, v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v1, v2

    aget v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v1, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_79

    move-object v6, v5

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    :goto_7a
    goto :goto_b

    :cond_7b
    :goto_7b
    monitor-exit v0

    return v2

    :cond_7d
    monitor-exit v0

    return v3

    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public isSingleLine()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-lez v0, :cond_18

    return v1

    :cond_18
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xff0

    if-eqz v0, :cond_30

    const/16 v3, 0x30

    if-eq v0, v3, :cond_30

    const/16 v3, 0x50

    if-eq v0, v3, :cond_30

    const/16 v3, 0x40

    if-eq v0, v3, :cond_30

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    return v1
.end method

.method isTextEditable()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isTextSelectable()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    :goto_8
    return v0
.end method

.method isVisibleToAccessibility()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method synthetic lambda$handleClick$0$android-widget-TextView(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 29

    move-object/from16 v14, p0

    move/from16 v15, p5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    iget v0, v14, Landroid/widget/TextView;->mMaximum:I

    iput v0, v14, Landroid/widget/TextView;->mOldMaximum:I

    iget v0, v14, Landroid/widget/TextView;->mMaxMode:I

    iput v0, v14, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v13, 0x1

    iput-boolean v13, v14, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-gez p1, :cond_18

    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_1a

    :cond_18
    move/from16 v16, p1

    :goto_1a
    if-gez p2, :cond_20

    const/4 v0, 0x0

    move/from16 v17, v0

    goto :goto_22

    :cond_20
    move/from16 v17, p2

    :goto_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v11

    iget-boolean v0, v14, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_39

    iget-object v0, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_39

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v11, v0, :cond_37

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v11, v0, :cond_39

    :cond_37
    move v0, v13

    goto :goto_3a

    :cond_39
    move v0, v10

    :goto_3a
    move/from16 v18, v0

    const/4 v0, 0x0

    if-eqz v18, :cond_45

    iget-object v1, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    :cond_45
    move v9, v0

    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_52

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-nez v0, :cond_52

    move v5, v13

    goto :goto_53

    :cond_52
    move v5, v10

    :goto_53
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_5f

    iget v0, v14, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v0, :cond_5f

    move v0, v13

    goto :goto_60

    :cond_5f
    move v0, v10

    :goto_60
    move/from16 v19, v0

    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v1, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_72

    iget v1, v14, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v13, :cond_72

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object v8, v0

    goto :goto_73

    :cond_72
    move-object v8, v0

    :goto_73
    iget-object v0, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v0, :cond_7d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_7d
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_83

    move v7, v13

    goto :goto_84

    :cond_83
    move v7, v10

    :goto_84
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object v4, v11

    move-object v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v19, :cond_bf

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_9d

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_9f

    :cond_9d
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    :goto_9f
    move-object v12, v0

    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v0, :cond_a6

    move v0, v13

    goto :goto_a7

    :cond_a6
    move v0, v10

    :goto_a7
    move-object/from16 v6, p0

    move/from16 v7, v16

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move v4, v9

    move/from16 v9, p5

    move v3, v10

    move-object v10, v11

    move-object v2, v11

    move v11, v5

    move v1, v13

    move v13, v0

    invoke-virtual/range {v6 .. v13}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    goto :goto_c5

    :cond_bf
    move-object/from16 v20, v8

    move v4, v9

    move v3, v10

    move-object v2, v11

    move v1, v13

    :goto_c5
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_cb

    move v13, v1

    goto :goto_cc

    :cond_cb
    move v13, v3

    :goto_cc
    move v11, v13

    const/4 v0, 0x0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_21a

    if-eqz v11, :cond_d8

    move/from16 v17, v16

    :cond_d8
    move/from16 v12, v17

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v6, p4

    if-ne v6, v5, :cond_f4

    iget-object v5, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForBoringLayout()Z

    move-result v8

    iget-object v9, v14, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v5, v7, v8, v9}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-eqz v0, :cond_f2

    iput-object v0, v14, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_f2
    move-object v13, v0

    goto :goto_f5

    :cond_f4
    move-object v13, v6

    :goto_f5
    if-eqz v13, :cond_194

    iget v0, v13, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v12, :cond_152

    if-eqz v11, :cond_10a

    iget v0, v13, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v15, :cond_102

    goto :goto_10a

    :cond_102
    move v10, v1

    move-object/from16 p1, v2

    move v15, v3

    move/from16 v21, v4

    goto/16 :goto_158

    :cond_10a
    :goto_10a
    iget-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_131

    iget-object v5, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v6, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v14, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v1

    move-object v1, v5

    move-object v5, v2

    move-object v2, v6

    move v6, v3

    move v3, v12

    move/from16 v21, v4

    move-object v4, v5

    move-object/from16 p1, v5

    move v5, v7

    move v7, v6

    move v6, v8

    move v8, v7

    move-object v7, v13

    move v15, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_14b

    :cond_131
    move v10, v1

    move-object/from16 p1, v2

    move v15, v3

    move/from16 v21, v4

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v14, Landroid/widget/TextView;->mIncludePad:Z

    move v2, v12

    move-object/from16 v3, p1

    move-object v6, v13

    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_14b
    iget-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    goto :goto_199

    :cond_152
    move v10, v1

    move-object/from16 p1, v2

    move v15, v3

    move/from16 v21, v4

    :goto_158
    if-eqz v11, :cond_199

    iget v0, v13, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v0, v12, :cond_199

    iget-object v0, v14, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_17b

    iget-object v1, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v2, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v8, v14, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v9, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v3, v12

    move-object/from16 v4, p1

    move-object v7, v13

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_199

    :cond_17b
    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v14, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v14, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v8, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v2, v12

    move-object/from16 v3, p1

    move-object v6, v13

    move/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_199

    :cond_194
    move-object/from16 p1, v2

    move v15, v3

    move/from16 v21, v4

    :cond_199
    :goto_199
    iget-object v0, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_211

    iget-object v0, v14, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, v14, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v15, v1, v2, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, v14, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v14, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v0, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v2, v14, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e5

    iget v2, v14, Landroid/widget/TextView;->mMaximum:I

    goto :goto_1e8

    :cond_1e5
    const v2, 0x7fffffff

    :goto_1e8
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v2, v14, Landroid/widget/TextView;->mLineBreakStyle:I

    iget v4, v14, Landroid/widget/TextView;->mLineBreakWordStyle:I

    invoke-static {v2, v4}, Landroid/graphics/text/LineBreakConfig;->getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v11, :cond_207

    iget-object v2, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v4, p5

    move v5, v15

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    goto :goto_20a

    :cond_207
    move/from16 v4, p5

    move v5, v15

    :goto_20a
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, v14, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_217

    :cond_211
    move-object/from16 v1, p1

    move/from16 v4, p5

    move v5, v15

    const/4 v3, 0x1

    :goto_217
    move/from16 v17, v12

    goto :goto_223

    :cond_21a
    move-object/from16 v6, p4

    move v5, v3

    move/from16 v21, v4

    move v4, v15

    move v3, v1

    move-object v1, v2

    move-object v13, v6

    :goto_223
    if-nez p6, :cond_235

    if-eqz v18, :cond_232

    iget-object v0, v14, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    move/from16 v2, v21

    if-eq v2, v0, :cond_23a

    goto :goto_237

    :cond_232
    move/from16 v2, v21

    goto :goto_23a

    :cond_235
    move/from16 v2, v21

    :goto_237
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_23a
    :goto_23a
    iget-object v0, v14, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v5, :cond_257

    int-to-float v0, v4

    invoke-direct {v14, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_257

    iget-object v0, v14, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-eq v0, v5, :cond_255

    const/4 v5, -0x1

    if-eq v0, v5, :cond_255

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_257

    :cond_255
    iput-boolean v3, v14, Landroid/widget/TextView;->mRestartMarquee:Z

    :cond_257
    :goto_257
    iget-object v0, v14, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_25e

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_25e
    return-void
.end method

.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .registers 26

    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->useDynamicLayout()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2, v12}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v1, v2, v3}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setJustificationMode(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_5a

    move-object v2, v15

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    :goto_5b
    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v16

    move-object/from16 v17, p2

    goto/16 :goto_116

    :cond_6b
    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_87

    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForBoringLayout()Z

    move-result v5

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v1, v3, v4, v5, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_85

    iput-object v1, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_85
    move-object v11, v1

    goto :goto_88

    :cond_87
    move-object v11, v2

    :goto_88
    if-eqz v11, :cond_114

    iget v1, v11, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v12, :cond_d0

    if-eqz v15, :cond_94

    iget v1, v11, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v13, :cond_d0

    :cond_94
    if-eqz p7, :cond_b0

    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_b0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v8, v11

    invoke-virtual/range {v1 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_c5

    :cond_b0
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v8, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object v7, v11

    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_c5
    if-eqz p7, :cond_cd

    move-object/from16 v1, v16

    check-cast v1, Landroid/text/BoringLayout;

    iput-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_cd
    move-object/from16 v17, v11

    goto :goto_116

    :cond_d0
    if-eqz p5, :cond_111

    iget v1, v11, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v1, v12, :cond_111

    if-eqz p7, :cond_f6

    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_f6

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v8, v11

    move-object/from16 v10, p6

    move-object/from16 v17, v11

    move/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v16

    goto :goto_116

    :cond_f6
    move-object/from16 v17, v11

    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v8, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v7, v17

    move-object/from16 v9, p6

    move/from16 v10, p3

    invoke-static/range {v1 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v16

    goto :goto_116

    :cond_111
    move-object/from16 v17, v11

    goto :goto_116

    :cond_114
    move-object/from16 v17, v11

    :goto_116
    if-nez v16, :cond_17f

    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2, v3, v4, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget v3, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mJustificationMode:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15f

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_162

    :cond_15f
    const v2, 0x7fffffff

    :goto_162
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/widget/TextView;->mLineBreakStyle:I

    iget v3, v0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    invoke-static {v2, v3}, Landroid/graphics/text/LineBreakConfig;->getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    if-eqz p5, :cond_17b

    invoke-virtual {v1, v15}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    :cond_17b
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v16

    :cond_17f
    return-object v16
.end method

.method public moveCursorToVisibleOffset()Z
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iget v7, v0, Landroid/widget/TextView;->mBottom:I

    iget v8, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v6, v5

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v7, 0x4

    if-le v8, v9, :cond_42

    div-int/lit8 v8, v7, 0x4

    :cond_42
    iget v9, v0, Landroid/widget/TextView;->mScrollY:I

    add-int v10, v9, v8

    if-ge v5, v10, :cond_54

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int v11, v9, v8

    sub-int v12, v6, v5

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    goto :goto_65

    :cond_54
    add-int v10, v7, v9

    sub-int/2addr v10, v8

    if-le v6, v10, :cond_65

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int v11, v7, v9

    sub-int/2addr v11, v8

    sub-int v12, v6, v5

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    :cond_65
    :goto_65
    iget v10, v0, Landroid/widget/TextView;->mRight:I

    iget v11, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/TextView;->mScrollX:I

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    int-to-float v13, v11

    invoke-virtual {v12, v4, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v12

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int v14, v10, v11

    int-to-float v14, v14

    invoke-virtual {v13, v4, v14}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v13

    if-ge v12, v13, :cond_8a

    move v14, v12

    goto :goto_8b

    :cond_8a
    move v14, v13

    :goto_8b
    if-le v12, v13, :cond_8f

    move v15, v12

    goto :goto_90

    :cond_8f
    move v15, v13

    :goto_90
    move/from16 v16, v1

    move/from16 v2, v16

    if-ge v2, v14, :cond_9b

    move/from16 v16, v14

    move/from16 v2, v16

    goto :goto_a1

    :cond_9b
    if-le v2, v15, :cond_a1

    move/from16 v16, v15

    move/from16 v2, v16

    :cond_a1
    :goto_a1
    if-eq v2, v1, :cond_ac

    move/from16 v16, v1

    iget-object v1, v0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1

    :cond_ac
    move/from16 v16, v1

    const/4 v1, 0x0

    return v1
.end method

.method public needInterceptPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentCaptureTextChanged()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->isImportantForContentCapture()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->getNotifiedContentCaptureAppeared()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    :cond_35
    return-void
.end method

.method public nullLayouts()V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v1, v0, Landroid/text/BoringLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_e

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v1, v0, Landroid/text/BoringLayout;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_1c

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2e
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/16 v0, 0x64

    if-ne p1, v0, :cond_55

    const/4 v0, -0x1

    if-ne p2, v0, :cond_49

    if-eqz p3, :cond_49

    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    new-instance v2, Landroid/view/ContentInfo$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/widget/Editor;->refreshTextActionMode()V

    :cond_31
    goto :goto_55

    :cond_32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_55

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_55

    :cond_49
    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    nop

    :cond_55
    :goto_55
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    :cond_a
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_18
    return-void
.end method

.method public onBeginBatchEdit()V
    .registers 1

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_7
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1d
    iget v0, p0, Landroid/widget/TextView;->mFontWeightAdjustment:I

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v0, v1, :cond_2e

    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/widget/TextView;->mFontWeightAdjustment:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2e
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_7
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_14

    :cond_9
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :goto_14
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_3a

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    const v4, 0x10100a7

    if-ne v3, v4, :cond_37

    add-int/lit8 v3, v1, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v1, v2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3a
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_eb

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_54

    :cond_4f
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :goto_54
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Landroid/widget/TextView;->hasEditorInFocusSearchDirection(I)Z

    move-result v0

    const/high16 v2, 0x8000000

    if-eqz v0, :cond_63

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_63
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/widget/TextView;->hasEditorInFocusSearchDirection(I)Z

    move-result v0

    if-eqz v0, :cond_72

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_72
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    const/high16 v3, 0x40000000  # 2.0f

    if-nez v0, :cond_97

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_86

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_8c

    :cond_86
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_8c
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-nez v0, :cond_97

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_97
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a9

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    :cond_a9
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_b6
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_eb

    new-instance v0, Lcom/android/internal/inputmethod/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    return-object v0

    :cond_eb
    return-object v1
.end method

.method public onCreateViewTranslationRequest([ILjava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TextView"

    if-eqz p1, :cond_96

    array-length v1, p1

    if-nez v1, :cond_9

    goto/16 :goto_96

    :cond_9
    new-instance v1, Landroid/view/translation/ViewTranslationRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/translation/ViewTranslationRequest$Builder;-><init>(Landroid/view/autofill/AutofillId;)V

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_84

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_84

    :cond_24
    invoke-virtual {p0}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :cond_32
    :goto_32
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-nez v3, :cond_5f

    if-eqz v2, :cond_3b

    goto :goto_5f

    :cond_3b
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/view/translation/TranslationRequestValue;->forText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationRequestValue;

    move-result-object v0

    const-string v3, "android:text"

    invoke-virtual {v1, v3, v0}, Landroid/view/translation/ViewTranslationRequest$Builder;->setValue(Ljava/lang/String;Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/ViewTranslationRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/view/translation/TranslationRequestValue;->forText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationRequestValue;

    move-result-object v0

    const-string v3, "android:content_description"

    invoke-virtual {v1, v3, v0}, Landroid/view/translation/ViewTranslationRequest$Builder;->setValue(Ljava/lang/String;Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/ViewTranslationRequest$Builder;

    goto :goto_8e

    :cond_5f
    :goto_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create translation request. editable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPassword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_84
    :goto_84
    sget-boolean v2, Landroid/view/translation/UiTranslationController;->DEBUG:Z

    if-eqz v2, :cond_8d

    const-string v2, "Cannot create translation request for the empty text."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    return-void

    :cond_8e
    :goto_8e
    invoke-virtual {v1}, Landroid/view/translation/ViewTranslationRequest$Builder;->build()Landroid/view/translation/ViewTranslationRequest;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_96
    :goto_96
    sget-boolean v1, Landroid/view/translation/UiTranslationController;->DEBUG:Z

    if-eqz v1, :cond_9f

    const-string v1, "Do not provide the support translation formats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    :cond_18
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_39

    :cond_b
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3e

    :pswitch_13  #0x4
    return v1

    :pswitch_14  #0x5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    return v1

    :pswitch_18  #0x3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_1f
    return v1

    :pswitch_20  #0x2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_37
    return v1

    :pswitch_38  #0x1
    return v1

    :cond_39
    :goto_39
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_20  #00000002
        :pswitch_18  #00000003
        :pswitch_13  #00000004
        :pswitch_14  #00000005
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v11

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    iget v13, v0, Landroid/widget/TextView;->mScrollY:I

    iget v14, v0, Landroid/widget/TextView;->mRight:I

    iget v15, v0, Landroid/widget/TextView;->mLeft:I

    iget v6, v0, Landroid/widget/TextView;->mBottom:I

    iget v5, v0, Landroid/widget/TextView;->mTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v17

    const/4 v4, 0x0

    if-eqz v16, :cond_33

    move v1, v4

    goto :goto_35

    :cond_33
    move/from16 v1, v17

    :goto_35
    move/from16 v18, v1

    if-eqz v16, :cond_3c

    move/from16 v1, v17

    goto :goto_3d

    :cond_3c
    move v1, v4

    :goto_3d
    move/from16 v19, v1

    iget-object v3, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v3, :cond_f6

    sub-int v20, v6, v5

    sub-int v20, v20, v11

    sub-int v20, v20, v9

    sub-int v21, v14, v15

    sub-int v21, v21, v10

    sub-int v21, v21, v8

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    const/16 v23, 0x2

    if-eqz v1, :cond_78

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v1, v12

    add-int v1, v1, v18

    int-to-float v1, v1

    add-int v24, v13, v9

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v2, v20, v2

    div-int/lit8 v2, v2, 0x2

    add-int v2, v24, v2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_78
    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v23

    if-eqz v1, :cond_a4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v1, v12, v14

    sub-int/2addr v1, v15

    iget v2, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v1, v2

    sub-int v1, v1, v19

    int-to-float v1, v1

    add-int v2, v13, v9

    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v4, v20, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v23

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a4
    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_ca

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v1, v12, v8

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v2, v21, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_ca
    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-eqz v1, :cond_f6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v1, v12, v8

    iget v2, v3, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v2, v21, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int v2, v13, v6

    sub-int/2addr v2, v5

    iget v4, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v2, v4

    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f6
    iget v1, v0, Landroid/widget/TextView;->mCurTextColor:I

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_ff

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_ff
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v4, :cond_117

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_117

    iget-object v4, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_113

    iget v1, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    :cond_113
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move v4, v1

    goto :goto_118

    :cond_117
    move v4, v1

    :goto_118
    iget-object v1, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v1, Landroid/text/TextPaint;->drawableState:[I

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->screenAntiBurnDimPaint()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v23

    iget v1, v0, Landroid/widget/TextView;->mBottom:I

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v11

    sub-int v26, v1, v9

    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    sub-int v3, v1, v26

    add-int v1, v8, v12

    int-to-float v1, v1

    move/from16 v27, v9

    if-nez v13, :cond_14e

    const/4 v9, 0x0

    goto :goto_151

    :cond_14e
    add-int v9, v21, v13

    int-to-float v9, v9

    :goto_151
    sub-int v29, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v30, v4

    add-int v4, v29, v12

    int-to-float v4, v4

    sub-int v29, v6, v5

    add-int v29, v29, v13

    if-ne v13, v3, :cond_167

    const/16 v31, 0x0

    goto :goto_169

    :cond_167
    move/from16 v31, v23

    :goto_169
    move/from16 v32, v3

    sub-int v3, v29, v31

    int-to-float v3, v3

    move/from16 v29, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v31, v6

    const/4 v6, 0x0

    cmpl-float v28, v5, v6

    if-eqz v28, :cond_1a6

    move/from16 v33, v10

    iget v10, v0, Landroid/widget/TextView;->mShadowDx:F

    sub-float/2addr v10, v5

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v1, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowDx:F

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v9, v5

    iget v5, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v10, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v5, v10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v3, v5

    move v10, v3

    move v6, v4

    move v5, v9

    move v9, v1

    goto :goto_1ac

    :cond_1a6
    move/from16 v33, v10

    move v10, v3

    move v6, v4

    move v5, v9

    move v9, v1

    :goto_1ac
    invoke-virtual {v7, v9, v5, v6, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    move/from16 v34, v1

    const/16 v1, 0x30

    if-eq v4, v1, :cond_1ca

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v3

    move/from16 v35, v3

    move/from16 v34, v4

    goto :goto_1cc

    :cond_1ca
    move/from16 v35, v3

    :goto_1cc
    int-to-float v1, v8

    add-int v3, v21, v34

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    iget v1, v0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v36

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_248

    iget-boolean v1, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v1, :cond_225

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_225

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_225

    and-int/lit8 v1, v36, 0x7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_225

    iget v1, v0, Landroid/widget/TextView;->mRight:I

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v22

    add-int v3, v3, v22

    move/from16 v22, v4

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v25, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    sub-int v5, v1, v3

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move/from16 v37, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_229

    :cond_225
    move/from16 v22, v4

    move/from16 v25, v5

    :goto_229
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_246

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_246

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v1

    neg-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_24d

    :cond_246
    const/4 v4, 0x0

    goto :goto_24d

    :cond_248
    move/from16 v22, v4

    move/from16 v25, v5

    const/4 v4, 0x0

    :goto_24d
    sub-int v5, v35, v34

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_282

    move/from16 v24, v5

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v2

    move-object/from16 v2, p1

    move-object/from16 v38, v3

    move-object/from16 v3, v37

    move/from16 v39, v8

    move v8, v4

    move/from16 v41, v30

    move/from16 v30, v22

    move/from16 v22, v41

    move-object/from16 v4, v38

    move/from16 v41, v29

    move/from16 v29, v24

    move/from16 v24, v41

    move/from16 v40, v6

    move/from16 v6, v29

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    move/from16 v2, v29

    move-object/from16 v4, v37

    move-object/from16 v3, v38

    goto :goto_29e

    :cond_282
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move/from16 v40, v6

    move/from16 v39, v8

    move/from16 v24, v29

    move v8, v4

    move/from16 v29, v5

    move/from16 v41, v30

    move/from16 v30, v22

    move/from16 v22, v41

    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move/from16 v2, v29

    move-object/from16 v4, v37

    invoke-virtual {v4, v7, v3, v1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_29e
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2bd

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v1

    if-eqz v1, :cond_2bd

    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x0

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v3, v5, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :cond_2bd
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onEditorAction(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    move-object v2, v3

    goto :goto_d

    :cond_b
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :goto_d
    if-eqz v2, :cond_66

    iget-object v4, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v4, :cond_1c

    iget-object v4, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v4, v0, v1, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-void

    :cond_1c
    const/4 v3, 0x5

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    if-ne v1, v3, :cond_36

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v5, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_35

    :cond_2f
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_35
    :goto_35
    return-void

    :cond_36
    const/4 v3, 0x7

    if-ne v1, v3, :cond_4e

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_4d

    :cond_47
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    const/4 v3, 0x6

    if-ne v1, v3, :cond_66

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_65
    return-void

    :cond_66
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_99

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v18, 0x16

    move-object v4, v15

    move-wide/from16 v5, v16

    move-wide/from16 v7, v16

    move-object v0, v15

    move/from16 v15, v18

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v15, 0x16

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    :cond_99
    return-void
.end method

.method public onEndBatchEdit()V
    .registers 1

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_a
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_11
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    :cond_1a
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_2a

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_2a
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1a

    :try_start_e
    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_14} :catch_19

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v0

    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_2d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_32

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_32
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_79

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4b

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_4b
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_6e
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v4, 0x1020054

    invoke-direct {v2, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_79
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    const/4 v4, 0x0

    if-nez v1, :cond_b9

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_b4

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_b2

    goto :goto_b4

    :cond_b2
    move v1, v4

    goto :goto_b5

    :cond_b4
    :goto_b4
    move v1, v3

    :goto_b5
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelectable(Z)V

    goto :goto_c4

    :cond_b9
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    :goto_c4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_d5

    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_d5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_e1

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_e1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_ec

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_ec
    invoke-virtual {p0}, Landroid/widget/TextView;->canReplace()Z

    move-result v1

    if-eqz v1, :cond_f7

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TEXT_SUGGESTIONS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_f7
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v1

    if-eqz v1, :cond_112

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/high16 v2, 0x10000000

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_112
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v1

    if-eqz v1, :cond_124

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onInitializeSmartActionsAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_124
    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_128
    if-ge v2, v1, :cond_13f

    iget-object v5, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v5, v5, v2

    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_13c

    move-object v6, v5

    check-cast v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v6}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_13c
    add-int/lit8 v2, v2, 0x1

    goto :goto_128

    :cond_13f
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-nez v2, :cond_148

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_148
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-nez v2, :cond_154

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_182

    :cond_154
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    instance-of v2, v2, Landroid/text/method/LinkMovementMethod;

    if-nez v2, :cond_166

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-eqz v2, :cond_182

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    if-nez v2, :cond_182

    :cond_166
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_174

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_174
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnLongClickListeners()Z

    move-result v2

    if-nez v2, :cond_182

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_182
    return-void
.end method

.method public onInputConnectionClosedInternal()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/Editor;->getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextViewOnReceiveContentListener;->clearInputConnectionInfo()V

    :cond_b
    return-void
.end method

.method public onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/Editor;->getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/TextViewOnReceiveContentListener;->setInputConnectionInfo(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_c
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_10
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    return v2

    :cond_15
    add-int/2addr p2, v3

    invoke-static {p3, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    if-ne v1, v2, :cond_45

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_27
    add-int/2addr p2, v3

    if-lez p2, :cond_41

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v5, p0, v6, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_27

    :cond_41
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    goto :goto_61

    :cond_45
    const/4 v5, 0x2

    if-ne v1, v5, :cond_61

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_4f
    add-int/2addr p2, v3

    if-lez p2, :cond_61

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v5, p0, v6, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v6, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v5, p0, v6, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_4f

    :cond_61
    :goto_61
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_53

    sparse-switch p1, :sswitch_data_80

    goto :goto_52

    :sswitch_c
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x1020032

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_1a
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_28
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_36
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_44
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_52
    :goto_52
    goto :goto_7b

    :cond_53
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    sparse-switch p1, :sswitch_data_96

    goto :goto_7b

    :sswitch_5f
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_7b

    const v0, 0x1020033

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_6d
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_7b

    const v0, 0x1020031

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_7b
    :goto_7b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_80
    .sparse-switch
        0x1d -> :sswitch_44
        0x1f -> :sswitch_36
        0x32 -> :sswitch_28
        0x34 -> :sswitch_1a
        0x36 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_96
    .sparse-switch
        0x32 -> :sswitch_6d
        0x36 -> :sswitch_5f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_b
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_14
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_fe

    goto/16 :goto_d0

    :sswitch_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_d0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4b

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4b

    return v0

    :cond_4b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_59

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_59
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_94

    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_79

    invoke-virtual {v3, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v0

    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_94

    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_94

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_94
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_99
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_cb

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_cb
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_d0
    :goto_d0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_e7

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_e7

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e7

    return v0

    :cond_e7
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_f8

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_f8

    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_f8

    return v0

    :cond_f8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_fe
    .sparse-switch
        0x17 -> :sswitch_99
        0x42 -> :sswitch_1a
        0xa0 -> :sswitch_1a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v0, :cond_19

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_19
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    return-void
.end method

.method onLocaleChanged()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onLocaleChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 34

    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sget-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget-object v2, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_20
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v12, -0x80000000

    if-ne v8, v12, :cond_28

    int-to-float v4, v10

    goto :goto_2b

    :cond_28
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    :goto_2b
    move/from16 v18, v4

    const/high16 v6, 0x40000000  # 2.0f

    if-ne v8, v6, :cond_3b

    move v4, v10

    move-object/from16 v20, v0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    const/4 v5, 0x1

    goto/16 :goto_143

    :cond_3b
    iget-object v4, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_47

    iget-object v13, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v13, :cond_47

    invoke-static {v4}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v2

    :cond_47
    if-gez v2, :cond_5e

    iget-object v4, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v13, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v14, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForBoringLayout()Z

    move-result v15

    iget-object v6, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v4, v13, v14, v15, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-eqz v0, :cond_5f

    iput-object v0, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x1

    :cond_5f
    :goto_5f
    if-eqz v0, :cond_69

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v0, v4, :cond_66

    goto :goto_69

    :cond_66
    iget v4, v0, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_85

    :cond_69
    :goto_69
    if-gez v2, :cond_84

    iget-object v13, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    iget-object v4, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-static/range {v13 .. v18}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v4

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v2, v13

    :cond_84
    move v4, v2

    :goto_85
    iget-object v6, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v6, :cond_95

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_95
    iget-object v13, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v13, :cond_f0

    const/4 v13, -0x1

    iget-object v14, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v14, :cond_a6

    iget-object v15, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v15, :cond_a6

    invoke-static {v14}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v13

    :cond_a6
    if-gez v13, :cond_bf

    iget-object v14, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v15, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v12, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isFallbackLineSpacingForBoringLayout()Z

    move-result v5

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v14, v15, v12, v5, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_c1

    iput-object v1, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    goto :goto_c1

    :cond_bf
    move-object/from16 v20, v0

    :cond_c1
    :goto_c1
    if-eqz v1, :cond_cb

    sget-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v1, v0, :cond_c8

    goto :goto_cb

    :cond_c8
    iget v0, v1, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_ec

    :cond_cb
    :goto_cb
    if-gez v13, :cond_eb

    iget-object v0, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/16 v22, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v23

    iget-object v5, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v12, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v24, v5

    move-object/from16 v25, v12

    move/from16 v26, v18

    invoke-static/range {v21 .. v26}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v0

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    :cond_eb
    move v0, v13

    :goto_ec
    if-le v0, v4, :cond_f2

    move v4, v0

    goto :goto_f2

    :cond_f0
    move-object/from16 v20, v0

    :cond_f2
    :goto_f2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    iget v0, v7, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_10d

    iget v0, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    mul-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_113

    :cond_10d
    iget v0, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_113
    iget v4, v7, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_124

    iget v4, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v12

    mul-int/2addr v4, v12

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_12a

    :cond_124
    iget v4, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_12a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v0, -0x80000000

    if-ne v8, v0, :cond_13f

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    goto :goto_143

    :cond_13f
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    :goto_143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v15, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v6, v0

    iget-boolean v1, v7, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v1, :cond_155

    const/high16 v0, 0x100000

    :cond_155
    move v4, v0

    move v3, v4

    iget-object v0, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_15d

    move v0, v3

    goto :goto_161

    :cond_15d
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    :goto_161
    move v2, v0

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_199

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v15, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    sub-int v17, v0, v17

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v27, v2

    move v2, v3

    move/from16 v28, v3

    move-object/from16 v3, v20

    move/from16 v29, v4

    move-object v4, v12

    move/from16 v22, v8

    move v8, v5

    move/from16 v5, v17

    move/from16 v30, v6

    const/high16 v8, 0x40000000  # 2.0f

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v24, v29

    goto/16 :goto_242

    :cond_199
    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v6

    move/from16 v22, v8

    const/high16 v8, 0x40000000  # 2.0f

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move/from16 v6, v29

    if-ne v0, v6, :cond_1c9

    move/from16 v4, v27

    move/from16 v5, v28

    if-ne v4, v5, :cond_1cd

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int v1, v15, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_1c7

    goto :goto_1cd

    :cond_1c7
    const/4 v0, 0x0

    goto :goto_1ce

    :cond_1c9
    move/from16 v4, v27

    move/from16 v5, v28

    :cond_1cd
    :goto_1cd
    const/4 v0, 0x1

    :goto_1ce
    move/from16 v19, v0

    iget-object v0, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v0, :cond_1ee

    iget-object v0, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_1ee

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    if-le v6, v0, :cond_1ee

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-nez v0, :cond_1ec

    if-eqz v14, :cond_1ee

    if-ltz v13, :cond_1ee

    if-gt v13, v6, :cond_1ee

    :cond_1ec
    const/4 v0, 0x1

    goto :goto_1ef

    :cond_1ee
    const/4 v0, 0x0

    :goto_1ef
    move/from16 v21, v0

    iget v0, v7, Landroid/widget/TextView;->mMaxMode:I

    iget v1, v7, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v0, v1, :cond_200

    iget v0, v7, Landroid/widget/TextView;->mMaximum:I

    iget v1, v7, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v0, v1, :cond_1fe

    goto :goto_200

    :cond_1fe
    const/4 v0, 0x0

    goto :goto_201

    :cond_200
    :goto_200
    const/4 v0, 0x1

    :goto_201
    move/from16 v23, v0

    if-nez v19, :cond_20f

    if-eqz v23, :cond_208

    goto :goto_20f

    :cond_208
    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v24, v6

    goto :goto_242

    :cond_20f
    :goto_20f
    if-nez v23, :cond_21f

    if-eqz v21, :cond_21f

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v6}, Landroid/text/Layout;->increaseWidthTo(I)V

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v24, v6

    goto :goto_242

    :cond_21f
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v15, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v24, v0, v1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    move-object/from16 v3, v20

    move/from16 v26, v4

    move-object v4, v12

    move/from16 v27, v5

    move/from16 v5, v24

    move/from16 v24, v6

    move/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :goto_242
    if-ne v9, v8, :cond_249

    move v0, v11

    const/4 v1, -0x1

    iput v1, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    goto :goto_25b

    :cond_249
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    move v1, v0

    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v2, -0x80000000

    if-ne v9, v2, :cond_25a

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    goto :goto_25b

    :cond_25a
    move v0, v1

    :goto_25b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27f

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    iget v3, v7, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v3, :cond_27f

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_27f
    iget-object v2, v7, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_29b

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v3, v30

    if-gt v2, v3, :cond_29d

    iget-object v2, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_296

    goto :goto_29d

    :cond_296
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_2a0

    :cond_29b
    move/from16 v3, v30

    :cond_29d
    :goto_29d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :goto_2a0
    invoke-virtual {v7, v15, v0}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPerformSpellCheck()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->onPerformSpellCheck()V

    :cond_f
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public onPreDraw()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_7
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_25

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_25
    if-gez v0, :cond_35

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_35
    if-ltz v0, :cond_3a

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3a
    goto :goto_3e

    :cond_3b
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    :goto_3e
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_50

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->refreshTextActionMode()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_50
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-super/range {p0 .. p3}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v5

    :goto_1e
    move v6, v0

    const-string v7, ": "

    const-string v8, "TextView"

    const/4 v9, 0x2

    if-eq v3, v5, :cond_28

    if-ne v3, v9, :cond_81

    :cond_28
    if-ne v3, v5, :cond_30

    iget-boolean v0, v1, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    xor-int/2addr v0, v5

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    :cond_30
    iget v0, v1, Landroid/widget/TextView;->mTextId:I

    if-eqz v0, :cond_6c

    :try_start_34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v10, v1, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setTextIdEntry(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_41} :catch_42

    goto :goto_6c

    :catch_42
    move-exception v0

    sget-boolean v10, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_6c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onProvideAutofillStructure(): cannot set name for text id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/widget/TextView;->mTextId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7e

    iget-object v10, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_7e

    invoke-virtual {v10}, Landroid/widget/Editor;->getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/TextViewOnReceiveContentListener;->getFallbackMimeTypesForAutofill(Landroid/widget/TextView;)[Ljava/lang/String;

    move-result-object v0

    :cond_7e
    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setReceiveContentMimeTypes([Ljava/lang/String;)V

    :cond_81
    if-eqz v6, :cond_8c

    if-eq v3, v5, :cond_8c

    if-ne v3, v9, :cond_88

    goto :goto_8c

    :cond_88
    move/from16 v17, v6

    goto/16 :goto_206

    :cond_8c
    :goto_8c
    iget-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_9b

    if-ne v3, v9, :cond_98

    const-string/jumbo v0, "onProvideContentCaptureStructure(): calling assumeLayout()"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_9b
    iget-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    if-gt v10, v5, :cond_be

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-ne v3, v5, :cond_ad

    invoke-virtual {v2, v11}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b8

    :cond_ad
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {v2, v11, v12, v13}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    :goto_b8
    move/from16 v17, v6

    move/from16 v18, v10

    goto/16 :goto_199

    :cond_be
    new-array v11, v9, [I

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->getLocationInWindow([I)V

    aget v12, v11, v5

    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    :goto_cb
    instance-of v15, v14, Landroid/view/View;

    if-eqz v15, :cond_d7

    move-object v13, v14

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    goto :goto_cb

    :cond_d7
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    if-ltz v12, :cond_ea

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v4

    add-int/lit8 v5, v15, -0x1

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v5

    goto :goto_f8

    :cond_ea
    neg-int v4, v12

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v4

    add-int/lit8 v5, v15, -0x1

    sub-int/2addr v5, v12

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v5

    :goto_f8
    sub-int v17, v5, v4

    div-int/lit8 v17, v17, 0x2

    sub-int v17, v4, v17

    if-gez v17, :cond_105

    const/16 v17, 0x0

    move/from16 v18, v17

    goto :goto_107

    :cond_105
    move/from16 v18, v17

    :goto_107
    sub-int v17, v5, v4

    div-int/lit8 v17, v17, 0x2

    add-int v9, v5, v17

    if-lt v9, v10, :cond_111

    add-int/lit8 v9, v10, -0x1

    :cond_111
    move/from16 v17, v6

    move/from16 v6, v18

    move/from16 v18, v10

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move/from16 v19, v6

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    move/from16 v20, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    move-object/from16 v21, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    if-ge v9, v11, :cond_135

    if-ge v9, v10, :cond_132

    move v10, v9

    :cond_132
    if-le v11, v6, :cond_135

    move v6, v11

    :cond_135
    move/from16 v22, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_191

    if-gtz v10, :cond_148

    move-object/from16 v23, v13

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v6, v13, :cond_14e

    goto :goto_14a

    :cond_148
    move-object/from16 v23, v13

    :goto_14a
    invoke-interface {v12, v10, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    :cond_14e
    const/4 v13, 0x1

    if-ne v3, v13, :cond_155

    invoke-virtual {v2, v12}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_199

    :cond_155
    sub-int v13, v9, v10

    move/from16 v24, v6

    sub-int v6, v11, v10

    invoke-virtual {v2, v12, v13, v6}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    sub-int v6, v5, v4

    const/4 v13, 0x1

    add-int/2addr v6, v13

    new-array v6, v6, [I

    sub-int v16, v5, v4

    move/from16 v25, v9

    add-int/lit8 v9, v16, 0x1

    new-array v9, v9, [I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v13

    move/from16 v26, v4

    move/from16 v27, v10

    move/from16 v10, v26

    :goto_176
    if-gt v10, v5, :cond_18d

    sub-int v26, v10, v4

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v28

    aput v28, v6, v26

    sub-int v26, v10, v4

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v28

    add-int v28, v28, v13

    aput v28, v9, v26

    add-int/lit8 v10, v10, 0x1

    goto :goto_176

    :cond_18d
    invoke-virtual {v2, v6, v9}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    goto :goto_199

    :cond_191
    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v27, v10

    move-object/from16 v23, v13

    :goto_199
    if-eqz v3, :cond_1a1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19f

    goto :goto_1a1

    :cond_19f
    const/4 v11, 0x1

    goto :goto_1d6

    :cond_1a1
    :goto_1a1
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_1ac

    or-int/lit8 v4, v4, 0x1

    :cond_1ac
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1b2

    or-int/lit8 v4, v4, 0x2

    :cond_1b2
    iget-object v6, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFlags()I

    move-result v6

    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1be

    or-int/lit8 v4, v4, 0x1

    :cond_1be
    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_1c4

    or-int/lit8 v4, v4, 0x4

    :cond_1c4
    and-int/lit8 v9, v6, 0x10

    if-eqz v9, :cond_1ca

    or-int/lit8 v4, v4, 0x8

    :cond_1ca
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v2, v9, v10, v11, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    :goto_1d6
    if-eq v3, v11, :cond_1db

    const/4 v4, 0x2

    if-ne v3, v4, :cond_206

    :cond_1db
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMinEms()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewStructure;->setMinTextEms(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMaxEms()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewStructure;->setMaxTextEms(I)V

    const/4 v4, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v5

    array-length v6, v5

    const/4 v9, 0x0

    :goto_1f0
    if-ge v9, v6, :cond_203

    aget-object v10, v5, v9

    instance-of v11, v10, Landroid/text/InputFilter$LengthFilter;

    if-eqz v11, :cond_200

    move-object v5, v10

    check-cast v5, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v5}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    goto :goto_203

    :cond_200
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f0

    :cond_203
    :goto_203
    invoke-virtual {v2, v4}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    :cond_206
    :goto_206
    iget v0, v1, Landroid/widget/TextView;->mHintId:I

    if-eqz v0, :cond_242

    :try_start_20a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, v1, Landroid/widget/TextView;->mHintId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setHintIdEntry(Ljava/lang/String;)V
    :try_end_217
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20a .. :try_end_217} :catch_218

    goto :goto_242

    :catch_218
    move-exception v0

    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_242

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onProvideAutofillStructure(): cannot set name for hint id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/TextView;->mHintId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_242
    :goto_242
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewStructure;->setInputType(I)V

    return-void
.end method

.method public onReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/Editor;->getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextViewOnReceiveContentListener;->onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v0

    return-object v0

    :cond_d
    return-object p1
.end method

.method public onResolveDrawables(I)V
    .registers 4

    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    :cond_28
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 9

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, v2, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    array-length v4, v3

    if-lez v4, :cond_2a

    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v5, 0x3ea

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    return-object v4

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3c

    :cond_37
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v1, 0x3f0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    instance-of v0, p1, Landroid/widget/TextView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    invoke-virtual {v0}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    iget v1, v0, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v1, :cond_91

    iget v1, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v1, :cond_91

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v1, :cond_91

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, v0, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v2, v1, :cond_4c

    iget v2, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v2, v1, :cond_36

    goto :goto_4c

    :cond_36
    iget-object v2, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    iget v3, v0, Landroid/widget/TextView$SavedState;->selStart:I

    iget v4, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-boolean v2, v0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v2, :cond_91

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_91

    :cond_4c
    :goto_4c
    const-string v2, ""

    iget-object v3, v0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_54

    const-string v2, "(restored) "

    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved cursor position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    iget-object v1, v0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9f

    iget-object v1, v0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    new-instance v2, Landroid/widget/TextView$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_9f
    iget-object v1, v0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v1, :cond_ad

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v1, v2}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    :cond_ad
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_14

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_14

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_14
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getFreezesText()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1c

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-gez v3, :cond_1b

    if-ltz v4, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    :cond_1c
    if-nez v1, :cond_22

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    new-instance v5, Landroid/widget/TextView$SavedState;

    invoke-direct {v5, v0}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    if-eqz v1, :cond_4d

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v6, Landroid/text/Spanned;

    if-eqz v7, :cond_47

    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_44

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v6, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_44
    iput-object v6, v5, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_4d

    :cond_47
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    :cond_4d
    :goto_4d
    if-eqz v2, :cond_53

    iput v3, v5, Landroid/widget/TextView$SavedState;->selStart:I

    iput v4, v5, Landroid/widget/TextView$SavedState;->selEnd:I

    :cond_53
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_60

    if-ltz v3, :cond_60

    if-ltz v4, :cond_60

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_60
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_70

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    :cond_70
    return-object v5
.end method

.method public onScreenStateChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_a
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_a
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_26
    const v2, 0x10403f2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_c0

    return v3

    :sswitch_2f
    invoke-direct {p0}, Landroid/widget/TextView;->requestAutofill()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    return v5

    :sswitch_36
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    return v5

    :sswitch_3a
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Landroid/widget/Editor;->replace()V

    :cond_41
    return v5

    :sswitch_42
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Landroid/widget/Editor;->redo()V

    :cond_49
    return v5

    :sswitch_4a
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/widget/Editor;->undo()V

    :cond_51
    return v5

    :sswitch_52
    invoke-direct {p0, v3}, Landroid/widget/TextView;->paste(Z)V

    return v5

    :sswitch_56
    invoke-direct {p0, v5}, Landroid/widget/TextView;->paste(Z)V

    return v5

    :sswitch_5a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_8f

    :cond_84
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_8f
    return v5

    :sswitch_90
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto :goto_ad

    :cond_a2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_ad
    return v5

    :sswitch_ae
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_be

    if-eqz v2, :cond_be

    invoke-virtual {v3}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    :cond_be
    return v5

    nop

    :sswitch_data_c0
    .sparse-switch
        0x102001f -> :sswitch_ae
        0x1020020 -> :sswitch_90
        0x1020021 -> :sswitch_5a
        0x1020022 -> :sswitch_56
        0x1020031 -> :sswitch_52
        0x1020032 -> :sswitch_4a
        0x1020033 -> :sswitch_42
        0x1020034 -> :sswitch_3a
        0x1020035 -> :sswitch_36
        0x1020043 -> :sswitch_2f
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    invoke-virtual {p0, p1, v2}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    :cond_11
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v1

    if-eqz v1, :cond_27

    return v3

    :cond_27
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v1

    if-eqz v1, :cond_38

    return v3

    :cond_38
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_5a

    iget-boolean v4, v4, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v4, :cond_5a

    if-ne v0, v3, :cond_5a

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v2, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v3, :cond_59

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->startInsertionActionMode()V

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v2, v3, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    :cond_59
    return v1

    :cond_5a
    if-ne v0, v3, :cond_6c

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_64

    iget-boolean v4, v4, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v4, :cond_6c

    :cond_64
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_6c

    move v4, v3

    goto :goto_6d

    :cond_6c
    move v4, v2

    :goto_6d
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_77

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_ef

    :cond_77
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_ef

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_ef

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_ef

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_93

    iget-object v7, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v6, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_93
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v6

    if-eqz v4, :cond_be

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_be

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_be

    if-eqz v6, :cond_be

    iget-object v7, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    array-length v8, v7

    if-lez v8, :cond_be

    aget-object v8, v7, v2

    invoke-virtual {v8, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v5, 0x1

    :cond_be
    if-eqz v4, :cond_ec

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_c8

    if-eqz v6, :cond_ec

    :cond_c8
    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v8

    if-eqz v8, :cond_e6

    iget-object v8, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v8, :cond_e6

    if-eqz v7, :cond_e6

    invoke-direct {p0}, Landroid/widget/TextView;->showAutofillDialog()Z

    move-result v8

    if-nez v8, :cond_e6

    invoke-virtual {v7, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_e6
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    const/4 v5, 0x1

    :cond_ec
    if-eqz v5, :cond_ef

    return v3

    :cond_ef
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v1, :cond_14

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_14

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    :cond_f
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 10

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->performSmartActionsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    return v1

    :cond_16
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_166

    const v2, 0x1020058

    if-ne p1, v2, :cond_160

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-virtual {p0}, Landroid/widget/TextView;->canReplace()Z

    move-result v2

    if-eqz v2, :cond_15e

    const v2, 0x1020034

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v2

    if-eqz v2, :cond_15e

    goto/16 :goto_15f

    :sswitch_36
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v2

    if-eqz v2, :cond_4c

    const v2, 0x1020035

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    return v1

    :cond_4c
    return v0

    :sswitch_4d
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onEditorAction(I)V

    :cond_60
    return v1

    :sswitch_61
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v2, v3, :cond_6e

    goto :goto_8c

    :cond_6e
    if-eqz p2, :cond_77

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_78

    :cond_77
    const/4 v0, 0x0

    :goto_78
    nop

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_8b

    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_8b
    return v1

    :cond_8c
    :goto_8c
    return v0

    :sswitch_8d
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_97

    return v0

    :cond_97
    const/4 v3, -0x1

    if-eqz p2, :cond_a1

    const-string v4, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_a2

    :cond_a1
    move v4, v3

    :goto_a2
    nop

    if-eqz p2, :cond_ac

    const-string v5, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_ad

    :cond_ac
    move v5, v3

    :goto_ad
    nop

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ne v6, v4, :cond_ba

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-eq v6, v5, :cond_e0

    :cond_ba
    if-ne v4, v5, :cond_c5

    if-ne v5, v3, :cond_c5

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v1

    :cond_c5
    if-ltz v4, :cond_e0

    if-gt v4, v5, :cond_e0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v5, v3, :cond_e0

    invoke-direct {p0}, Landroid/widget/TextView;->requestFocusOnNonEditableSelectableText()V

    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_df

    invoke-virtual {v3, v0}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    :cond_df
    return v1

    :cond_e0
    return v0

    :sswitch_e1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    if-eqz v2, :cond_f7

    const v2, 0x1020020

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v2

    if-eqz v2, :cond_f7

    return v1

    :cond_f7
    return v0

    :sswitch_f8
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_10e

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    if-eqz v2, :cond_10e

    const v2, 0x1020022

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v2

    if-eqz v2, :cond_10e

    return v1

    :cond_10e
    return v0

    :sswitch_10f
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v2

    if-eqz v2, :cond_125

    const v2, 0x1020021

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v2

    if-eqz v2, :cond_125

    return v1

    :cond_125
    return v0

    :sswitch_126
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :sswitch_12e
    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_158

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_153

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v2, v3, :cond_153

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v2, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    :try_start_144
    invoke-virtual {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v1
    :try_end_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_14d

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v0, v2, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    goto :goto_157

    :catchall_14d
    move-exception v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v0, v2, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    throw v1

    :cond_153
    invoke-virtual {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v1

    :goto_157
    return v1

    :cond_158
    return v0

    :sswitch_159
    invoke-direct {p0, p2}, Landroid/widget/TextView;->performAccessibilityActionClick(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_15e
    move v1, v0

    :goto_15f
    return v1

    :cond_160
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_166
    .sparse-switch
        0x10 -> :sswitch_159
        0x20 -> :sswitch_12e
        0x100 -> :sswitch_126
        0x200 -> :sswitch_126
        0x4000 -> :sswitch_10f
        0x8000 -> :sswitch_f8
        0x10000 -> :sswitch_e1
        0x20000 -> :sswitch_8d
        0x200000 -> :sswitch_61
        0x1020054 -> :sswitch_4d
        0x10000000 -> :sswitch_36
    .end sparse-switch
.end method

.method public performLongClick()Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    iput-boolean v3, v2, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    :cond_9
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_11
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v2, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    :cond_1f
    if-eqz v0, :cond_2d

    if-nez v1, :cond_26

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    :cond_26
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_34

    iput-boolean v3, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    goto :goto_34

    :cond_2d
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x275

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_34
    :goto_34
    return v0
.end method

.method public populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V
    .registers 39

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    move v5, v3

    :goto_15
    if-gt v5, v4, :cond_e7

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    iget-object v7, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_35

    goto :goto_36

    :cond_35
    const/4 v11, 0x0

    :goto_36
    move v10, v11

    sub-int v11, v9, v8

    new-array v11, v11, [F

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13, v8, v9, v11}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    move v14, v8

    :goto_55
    if-ge v14, v9, :cond_dd

    sub-int v15, v14, v8

    aget v22, v11, v15

    iget-object v15, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v15, v14}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v23

    iget-object v15, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v24

    iget-object v15, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v25

    if-eqz v10, :cond_83

    if-eqz v23, :cond_7a

    sub-float v15, v25, v22

    move/from16 v16, v25

    move/from16 v26, v15

    move/from16 v27, v16

    goto :goto_96

    :cond_7a
    move/from16 v15, v24

    add-float v16, v24, v22

    move/from16 v26, v15

    move/from16 v27, v16

    goto :goto_96

    :cond_83
    if-nez v23, :cond_8e

    move/from16 v15, v25

    add-float v16, v25, v22

    move/from16 v26, v15

    move/from16 v27, v16

    goto :goto_96

    :cond_8e
    sub-float v15, v24, v22

    move/from16 v16, v24

    move/from16 v26, v15

    move/from16 v27, v16

    :goto_96
    add-float v15, v26, p4

    add-float v1, v27, p4

    add-float v2, v12, p5

    move/from16 v28, v3

    add-float v3, v13, p5

    invoke-virtual {v0, v15, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v29

    nop

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v30

    const/16 v16, 0x0

    if-nez v29, :cond_af

    if-eqz v30, :cond_b1

    :cond_af
    or-int/lit8 v16, v16, 0x1

    :cond_b1
    if-eqz v29, :cond_b5

    if-nez v30, :cond_b7

    :cond_b5
    or-int/lit8 v16, v16, 0x2

    :cond_b7
    if-eqz v23, :cond_be

    or-int/lit8 v16, v16, 0x4

    move/from16 v31, v16

    goto :goto_c0

    :cond_be
    move/from16 v31, v16

    :goto_c0
    move/from16 v32, v15

    move-object/from16 v15, p1

    move/from16 v16, v14

    move/from16 v17, v32

    move/from16 v18, v2

    move/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v31

    invoke-virtual/range {v15 .. v21}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v28

    goto/16 :goto_55

    :cond_dd
    move/from16 v28, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_15

    :cond_e7
    return-void
.end method

.method public prepareForExtendedAccessibilitySelection()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextView;->requestFocusOnNonEditableSelectableText()V

    return-void
.end method

.method removeAdjacentSuggestionSpans(I)V
    .registers 9

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_7

    return-void

    :cond_7
    check-cast v0, Landroid/text/Editable;

    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v1, v3

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, p1, :cond_25

    if-ne v4, p1, :cond_30

    :cond_25
    invoke-static {v0, p1, p1, v4, v5}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_30

    aget-object v6, v1, v3

    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_33
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .registers 6

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/SuggestionSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_27

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_24

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_24

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_27
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_30

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_12

    :cond_c
    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    :goto_12
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    if-nez v2, :cond_23

    return-object p1

    :cond_23
    move-object p1, v0

    const/4 v2, 0x0

    :goto_25
    array-length v3, v1

    if-ge v2, v3, :cond_30

    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_30
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public requestActionMode(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    :cond_b
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_30

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_30

    if-lt v0, v1, :cond_26

    goto :goto_30

    :cond_26
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Editor;->startLinkActionModeAsync(II)V

    const/4 v2, 0x1

    return v2

    :cond_30
    :goto_30
    return v2
.end method

.method public resetErrorChangedFlag()V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_7
    return-void
.end method

.method protected resetResolvedDrawables()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method selectAllText()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-lez v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2
.end method

.method public sendAccessibilityEventInternal(I)V
    .registers 3

    const v0, 0x8000

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V
    .registers 5

    nop

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    nop

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    invoke-direct {p0}, Landroid/widget/TextView;->notifyListeningManagersAfterTextChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return-void
.end method

.method protected sendCursorInfo(II)V
    .registers 8

    iget-object v0, p0, Landroid/widget/TextView;->mStub:Lcom/xiaomi/mirror/MiuiMirrorStub;

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/xiaomi/mirror/MiuiMirrorStub;->getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mStub:Lcom/xiaomi/mirror/MiuiMirrorStub;

    invoke-interface {v0}, Lcom/xiaomi/mirror/MiuiMirrorStub;->isModelSupport()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/TextView;->mModelSupport:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCursorInfo support:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView;->mModelSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-boolean v0, p0, Landroid/widget/TextView;->mModelSupport:Z

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/widget/TextView;->mLastX:I

    if-ne v0, p1, :cond_37

    iget v0, p0, Landroid/widget/TextView;->mLastY:I

    if-eq v0, p2, :cond_52

    :cond_37
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iput p1, p0, Landroid/widget/TextView;->mLastX:I

    iput p2, p0, Landroid/widget/TextView;->mLastY:I

    iget-object v2, p0, Landroid/widget/TextView;->mStub:Lcom/xiaomi/mirror/MiuiMirrorStub;

    const/4 v3, 0x0

    aget v3, v1, v3

    add-int/2addr v3, p1

    const/4 v4, 0x1

    aget v4, v1, v4

    add-int/2addr v4, p2

    invoke-interface {v2, v0, v3, v4}, Lcom/xiaomi/mirror/MiuiMirrorStub;->notifyInputTypeAndPos(III)V

    :cond_52
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/Editor;->sendOnTextChanged(III)V

    :cond_20
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v0

    if-ne v0, p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v0

    if-ne v0, p2, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_28

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_28

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2e

    :cond_28
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_2e
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_3a
    return-void
.end method

.method public setAllCaps(Z)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_f

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_13

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_13
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {p4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v2, p2

    invoke-static {p4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    int-to-float v3, p3

    invoke-static {p4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_2c
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_66

    array-length v0, p1

    if-lez v0, :cond_57

    new-array v1, v0, [I

    if-nez p2, :cond_12

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_2d

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v0, :cond_2d

    aget v4, p1, v3

    int-to-float v4, v4

    invoke-static {p2, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2d
    :goto_2d
    invoke-direct {p0, v1}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_5a

    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "None of the preset sizes is valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_57
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    :goto_5a
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_66
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_4c

    packed-switch p1, :pswitch_data_4e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41400000  # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000  # 112.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_4c

    :pswitch_49  #0x0
    invoke-direct {p0}, Landroid/widget/TextView;->clearAutoSizeConfiguration()V

    :cond_4c
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_49  #00000000
        :pswitch_22  #00000001
    .end packed-switch
.end method

.method public setBreakStrategy(I)V
    .registers 3

    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_f
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_9

    if-eqz v0, :cond_19

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_19

    :cond_9
    if-nez v0, :cond_17

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_17
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :cond_19
    :goto_19
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawableTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_f

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_f
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_f

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_f
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1a

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1a
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :cond_24
    const/4 v3, 0x1

    if-nez p1, :cond_30

    if-nez p2, :cond_30

    if-nez p3, :cond_30

    if-eqz p4, :cond_2e

    goto :goto_30

    :cond_2e
    move v4, v2

    goto :goto_31

    :cond_30
    :goto_30
    move v4, v3

    :goto_31
    if-nez v4, :cond_6b

    if-eqz v0, :cond_151

    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    move-result v5

    if-nez v5, :cond_3f

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_151

    :cond_3f
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    sub-int/2addr v5, v3

    :goto_43
    if-ltz v5, :cond_59

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_52

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_52
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_43

    :cond_59
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_151

    :cond_6b
    if-nez v0, :cond_79

    new-instance v5, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_79
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v2, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    if-eq v5, p1, :cond_90

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    if-eqz v5, :cond_90

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_90
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v5, v2

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eq v5, p2, :cond_a7

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eqz v5, :cond_a7

    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a7
    iget-object v5, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v5, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    if-eq v3, p3, :cond_bf

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_bf

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_bf
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v3, v5

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    if-eq v3, p4, :cond_d7

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_d7

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d7
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_f9

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_fd

    :cond_f9
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :goto_fd
    if-eqz p3, :cond_115

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_119

    :cond_115
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_119
    if-eqz p2, :cond_131

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_135

    :cond_131
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_135
    if-eqz p4, :cond_14d

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_151

    :cond_14d
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    :cond_151
    :goto_151
    if-eqz v0, :cond_157

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    :cond_157
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    if-eqz v3, :cond_13

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_13
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_27

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_27
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v4

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_35
    const/4 v3, 0x1

    if-nez p1, :cond_41

    if-nez p2, :cond_41

    if-nez p3, :cond_41

    if-eqz p4, :cond_3f

    goto :goto_41

    :cond_3f
    move v4, v1

    goto :goto_42

    :cond_41
    :goto_41
    move v4, v3

    :goto_42
    const/4 v5, 0x3

    if-nez v4, :cond_9b

    if-eqz v0, :cond_16f

    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    move-result v6

    if-nez v6, :cond_51

    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_16f

    :cond_51
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5a

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5a
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_69

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_69
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_76

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_76
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_85

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_85
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v5

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_16f

    :cond_9b
    if-nez v0, :cond_a9

    new-instance v6, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_a9
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v3, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v6, p1, :cond_ba

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_ba

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_ba
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eq v6, p2, :cond_cf

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_cf

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_cf
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v6, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v3, p3, :cond_e0

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e0

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e0
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eq v3, p4, :cond_f5

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_f5

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v2, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_117

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_11b

    :cond_117
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_11b
    if-eqz p3, :cond_133

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_137

    :cond_133
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :goto_137
    if-eqz p2, :cond_14f

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_153

    :cond_14f
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_153
    if-eqz p4, :cond_16b

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_16f

    :cond_16b
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    :cond_16f
    :goto_16f
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 10
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    if-eqz p2, :cond_15

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_16

    :cond_15
    move-object v3, v1

    :goto_16
    if-eqz p3, :cond_1d

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v1

    :goto_1e
    if-eqz p4, :cond_24

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_24
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_e
    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1b
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_28
    if-eqz p4, :cond_35

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_d

    :cond_c
    move-object v2, v1

    :goto_d
    if-eqz p2, :cond_14

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_15

    :cond_14
    move-object v3, v1

    :goto_15
    if-eqz p3, :cond_1c

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1d

    :cond_1c
    move-object v4, v1

    :goto_1d
    if-eqz p4, :cond_23

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_23
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_e
    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1b
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_28
    if-eqz p4, :cond_35

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisibleFromAttr:Z

    invoke-direct {p0}, Landroid/widget/TextView;->updateCursorVisibleInternal()V

    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1a
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_13

    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_13
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_1d

    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2b

    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2b
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    :cond_3c
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10805a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_21
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_57

    if-nez v6, :cond_12

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_57

    :cond_12
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v2, :cond_2c

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v0, v2, :cond_24

    move v0, v2

    :cond_24
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v1, v2, :cond_29

    move v1, v2

    :cond_29
    move v7, v0

    move v8, v1

    goto :goto_2e

    :cond_2c
    move v7, v0

    move v8, v1

    :goto_2e
    invoke-static {v6, v7, v8}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    invoke-interface {v6, v7, v8}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_57

    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    sub-int v2, v8, v7

    const-class v3, Ljava/lang/Object;

    move-object v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_57

    :cond_52
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v7, v8, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_57
    :goto_57
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gez v2, :cond_67

    const/4 v2, 0x0

    goto :goto_6a

    :cond_67
    if-le v2, v1, :cond_6a

    move v2, v1

    :cond_6a
    :goto_6a
    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v3, :cond_70

    const/4 v3, 0x0

    goto :goto_73

    :cond_70
    if-le v3, v1, :cond_73

    move v3, v1

    :cond_73
    :goto_73
    invoke-static {v0, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_80

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_83

    :cond_80
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_83
    iget-object v4, p1, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/widget/TextView;->setHintInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_c
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_21
    return-void
.end method

.method public setFallbackLineSpacing(Z)V
    .registers 4

    if-eqz p1, :cond_f

    const-wide/32 v0, 0xc926fda

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_10

    :cond_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    if-eq v1, v0, :cond_23

    iput v0, p0, Landroid/widget/TextView;->mUseFallbackLineSpacing:I

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_23
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 4

    if-eqz p1, :cond_10

    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_f
    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setFirstBaselineToTopHeight(I)V
    .registers 8

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_16

    :cond_14
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_16
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_2e

    neg-int v2, v1

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2e
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1a
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_27

    if-eqz p1, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_27

    :cond_11
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_26
    return v1

    :cond_27
    :goto_27
    const/4 v1, 0x1

    return v1
.end method

.method protected setFrame(IIII)Z
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    :cond_b
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return v0
.end method

.method public setFreezesText(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .registers 11
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int v1, p1, v0

    if-nez v1, :cond_b

    const v1, 0x800003

    or-int/2addr p1, v1

    :cond_b
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_11

    or-int/lit8 p1, p1, 0x30

    :cond_11
    const/4 v1, 0x0

    and-int v2, p1, v0

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v0, v3

    if-eq v2, v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    if-eq p1, v3, :cond_1f

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1f
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4f

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_31

    const/4 v2, 0x0

    goto :goto_35

    :cond_31
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    :goto_35
    move v4, v2

    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v7, v2, v3

    const/4 v8, 0x1

    move-object v2, p0

    move v3, v0

    move-object v5, v6

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_4f
    return-void
.end method

.method public setHeight(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setHint(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mHintId:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setHintInternal(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_12
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_13

    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_13
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .registers 3

    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_f
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeConsumesInput(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/TextView;->mImeIsConsumingInput:Z

    invoke-direct {p0}, Landroid/widget/TextView;->updateCursorVisibleInternal()V

    return-void
.end method

.method public setImeHintLocales(Landroid/os/LocaleList;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v0, :cond_1e

    if-nez p1, :cond_16

    const/4 v0, 0x0

    goto :goto_1b

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    :goto_1b
    invoke-direct {p0, v0}, Landroid/widget/TextView;->changeListenerLocaleTo(Ljava/util/Locale;)V

    :cond_1e
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_13

    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_13
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .registers 13

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v8

    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v8, :cond_30

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    goto :goto_5b

    :cond_30
    if-eqz v9, :cond_45

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_3b

    const/4 v10, 0x1

    :cond_3b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    goto :goto_5b

    :cond_45
    if-nez v6, :cond_49

    if-eqz v7, :cond_5b

    :cond_49
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;III)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_5b

    const/4 v10, 0x1

    :cond_5b
    :goto_5b
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v2, v0, :cond_67

    if-eqz v10, :cond_6c

    :cond_67
    xor-int/lit8 v2, v8, 0x1

    invoke-direct {p0, v0, v2, v1, v1}, Landroid/widget/TextView;->applySingleLine(ZZZZ)V

    :cond_6c
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->setTextInternal(Ljava/lang/CharSequence;)V

    :cond_7b
    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_84
    return-void
.end method

.method public setJustificationMode(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mJustificationMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_f
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_12

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    goto :goto_19

    :cond_12
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_19
    :goto_19
    invoke-direct {p0}, Landroid/widget/TextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .registers 8

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_16

    :cond_14
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_16
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_2d

    sub-int v2, p1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2d
    return-void
.end method

.method public setLetterSpacing(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1c
    return-void
.end method

.method public setLineBreakStyle(I)V
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_13
    return-void
.end method

.method public setLineBreakWordStyle(I)V
    .registers 3

    iget v0, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_13
    return-void
.end method

.method public setLineHeight(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_16

    sub-int v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_16
    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 4

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    :cond_c
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1d
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1b

    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1b
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_10

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_13

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_14

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_14

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_17

    :cond_14
    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .registers 3

    if-nez p1, :cond_7

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_14

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_14
    return-void
.end method

.method public setSelected(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_18

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_18

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_18

    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_18
    :goto_18
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    return-void
.end method

.method public setSingleLine()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZZ)V

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    iput p1, p0, Landroid/widget/TextView;->mTextId:I

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTextSetFromXmlOrResourceId:Z

    iput p1, p0, Landroid/widget/TextView;->mTextId:I

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->-$$Nest$fputmChars(Landroid/widget/TextView$CharWrapper;[C)V

    :cond_d
    return-void
.end method

.method public final setText([CII)V
    .registers 8

    const/4 v0, 0x0

    if-ltz p2, :cond_35

    if-ltz p3, :cond_35

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_35

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_1e

    :cond_19
    const-string v1, ""

    invoke-direct {p0, v1, v2, v2, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :goto_1e
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_2a

    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    goto :goto_2d

    :cond_2a
    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    :goto_2d
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v3, v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    :cond_35
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView$TextAppearanceAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>(Landroid/widget/TextView$TextAppearanceAttributes-IA;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->readTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/widget/TextView$TextAppearanceAttributes;Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v1}, Landroid/widget/TextView;->applyTextAppearance(Landroid/widget/TextView$TextAppearanceAttributes;)V

    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_8

    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setTextCursorDrawable(I)V
    .registers 3

    nop

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/TextView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Editor;->loadCursorDrawable()V

    :cond_c
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .registers 4

    if-nez p1, :cond_7

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-ne v0, p1, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-eqz p1, :cond_2a

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_35

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_37

    :cond_35
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_37
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v0, :cond_13

    if-ltz v1, :cond_2c

    :cond_13
    iget-object v3, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v3, :cond_2c

    nop

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2c
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_15
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_15
    return-void
.end method

.method public setTextMetricsParams(Landroid/text/PrecomputedText$Params;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView;->mLineBreakStyle:I

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView;->mLineBreakWordStyle:I

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3b
    return-void
.end method

.method public final setTextOperationUser(Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_4d

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4d

    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERACT_ACROSS_USERS_FULL is required. userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUserId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :goto_4d
    iput-object p1, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/widget/Editor;->onTextOperationUserChanged()V

    :cond_59
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1f
    return-void
.end method

.method public setTextSelectHandle(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "The text select handle should be a valid drawable resource id."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "The text select handle should not be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/widget/TextView;->mTextSelectHandle:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    :cond_12
    return-void
.end method

.method public setTextSelectHandleLeft(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "The text select left handle should be a valid drawable resource id."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "The left text select handle should not be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/widget/TextView;->mTextSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    :cond_12
    return-void
.end method

.method public setTextSelectHandleRight(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "The text select right handle should be a valid drawable resource id."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "The right text select handle should not be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/widget/TextView;->mTextSelectHandleRight:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    :cond_12
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    :cond_a
    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v1, :cond_e

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_e
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, p1, Landroid/text/method/TransformationMethod2;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    move-object v0, p1

    check-cast v0, Landroid/text/method/TransformationMethod2;

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v2}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_2f

    :cond_2d
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    :goto_2f
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_3d
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 7

    iput-object p1, p0, Landroid/widget/TextView;->mOriginalTypeface:Landroid/graphics/Typeface;

    iget v0, p0, Landroid/widget/TextView;->mFontWeightAdjustment:I

    if-eqz v0, :cond_36

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_36

    if-nez p1, :cond_10

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_36

    :cond_10
    nop

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mFontWeightAdjustment:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    goto :goto_2c

    :cond_2b
    move v3, v2

    :goto_2c
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_50

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_50
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4c

    if-nez p1, :cond_b

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getInternalTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    :cond_22
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    not-int v4, v3

    and-int/2addr v4, p2

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v5

    if-nez v5, :cond_3b

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_48

    const/high16 v0, -0x41800000  # -0.25f

    :cond_48
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_59

    :cond_4c
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_59
    return-void
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWidth(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public showContextMenu()Z
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    const/high16 v1, 0x7fc00000  # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    :cond_9
    invoke-super {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    move-result v0

    return v0
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_b

    :cond_9
    iget-object v3, v3, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :goto_b
    sget-object v4, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v4, :cond_29

    const/4 v0, 0x1

    move v2, p4

    if-gez p3, :cond_15

    if-ltz p4, :cond_29

    :cond_15
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {p0, v4, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroid/widget/Editor;->makeBlink()V

    :cond_29
    sget-object v4, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v4, :cond_3a

    const/4 v0, 0x1

    move v1, p4

    if-gez p3, :cond_33

    if-ltz p4, :cond_3a

    :cond_33
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {p0, v4, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_3a
    const/4 v4, 0x1

    if-eqz v0, :cond_83

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4d

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_4d

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_4d
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_83

    if-gez v1, :cond_5b

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    :cond_5b
    if-gez v2, :cond_61

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_61
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_80

    invoke-virtual {v5}, Landroid/widget/Editor;->refreshTextActionMode()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_80

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v5

    if-nez v5, :cond_80

    invoke-virtual {p0}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_80

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setHasTransientState(Z)V

    :cond_80
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    :cond_83
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_8f

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_8f

    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_ba

    :cond_8f
    if-eqz v3, :cond_99

    iget v5, v3, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_96

    goto :goto_99

    :cond_96
    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_a1

    :cond_99
    :goto_99
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    :goto_a1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_ba

    if-ltz p3, :cond_ac

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_ac
    if-ltz p4, :cond_b5

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_b5
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    :cond_ba
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    iput-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_cc

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cc

    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    :cond_cc
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_df

    if-eqz v3, :cond_dc

    iget v5, v3, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_d9

    goto :goto_dc

    :cond_d9
    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_df

    :cond_dc
    :goto_dc
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_df
    :goto_df
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_10c

    if-eqz v3, :cond_10c

    iget-object v5, v3, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_10c

    iget v5, v3, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_10a

    if-ltz p3, :cond_fb

    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p3, :cond_f5

    iput p3, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_f5
    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p5, :cond_fb

    iput p5, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_fb
    if-ltz p4, :cond_10c

    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p4, :cond_103

    iput p4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_103
    iget v4, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v4, p6, :cond_10c

    iput p6, v3, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_10c

    :cond_10a
    iput-boolean v4, v3, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    :cond_10c
    :goto_10c
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_124

    iget-object v4, v4, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_124

    if-gez p4, :cond_124

    instance-of v4, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v4, :cond_124

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object v5, p2

    check-cast v5, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {v4, v5}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_124
    return-void
.end method

.method startActivityAsTextOperationUserIfNecessary(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextOperationUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_15

    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_15
    return-void
.end method

.method protected startMarquee()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_27
    invoke-virtual {p0}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_39
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_70

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v0, v1, :cond_5e

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_5e
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_69

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    :cond_69
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    :cond_70
    return-void
.end method

.method public startSelectionActionModeAsync()V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    return-void
.end method

.method protected stopMarquee()V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    :cond_f
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_29
    return-void
.end method

.method protected stopTextActionMode()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_7
    return-void
.end method

.method protected supportsAutoSizeText()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method textCanBeSelected()Z
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_26

    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1

    :cond_26
    :goto_26
    return v1
.end method

.method updateAfterEdit()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_11

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_14
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_26

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_26
    return-void
.end method

.method public useDynamicLayout()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TextView;->mPrecomputed:Landroid/text/PrecomputedText;

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method usesNoOpTextClassifier()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 7

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_19

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    if-ne p1, v4, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_19
    return v0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    return v0
.end method
