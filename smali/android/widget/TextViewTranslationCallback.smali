# classes4.dex

.class public Landroid/widget/TextViewTranslationCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/translation/ViewTranslationCallback;


# static fields
.field private static final COMPAT_PAD_CHARACTER:C = '\u2002'

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TextViewTranslationCb"


# instance fields
.field private mAnimationDurationMillis:I

.field private mAnimationRunning:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIsShowingTranslation:Z

.field private mIsTextPaddingEnabled:Z

.field private mOriginalClickable:Z

.field private mOriginalFocusable:I

.field private mOriginalFocusableInTouchMode:Z

.field private mOriginalIsTextSelectable:Z

.field private mOriginalLongClickable:Z

.field private mPaddedText:Ljava/lang/CharSequence;

.field private mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;


# direct methods
.method static bridge synthetic -$$Nest$fputmAnimator(Landroid/widget/TextViewTranslationCallback;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    const/16 v0, 0xfa

    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    return-void
.end method

.method private clearTranslationTransformation()V
    .registers 3

    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTranslationTransformation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextViewTranslationCb"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    return-void
.end method

.method private static colorWithAlpha(II)I
    .registers 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private computePaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_e

    return-object p1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_1a
    if-ge v2, v0, :cond_24

    const/16 v3, 0x2002

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_24
    return-object v1
.end method

.method static synthetic lambda$runChangeTextWithAnimationIfNeeded$2(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .registers 10

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_a
    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/TextViewTranslationCallback;->colorWithAlpha(II)I

    move-result v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    aput v6, v5, v3

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/TextViewTranslationCallback$1;

    invoke-direct {v5, p0, v3, v1, p2}, Landroid/widget/TextViewTranslationCallback$1;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/content/res/ColorStateList;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public enableContentPadding()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    return-void
.end method

.method getPaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->computePaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    :cond_e
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAnimationRunning()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    return v0
.end method

.method public isShowingTranslation()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    return v0
.end method

.method isTextPaddingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    return v0
.end method

.method synthetic lambda$onHideTranslation$1$android-widget-TextViewTranslationCallback(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_33

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(I)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    :cond_33
    return-void
.end method

.method synthetic lambda$onShowTranslation$0$android-widget-TextViewTranslationCallback(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocusableInTouchMode()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    invoke-virtual {v1}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_32
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public onClearTranslation(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Landroid/widget/TextViewTranslationCallback;->onHideTranslation(Landroid/view/View;)Z

    invoke-direct {p0}, Landroid/widget/TextViewTranslationCallback;->clearTranslationTransformation()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    return v0

    :cond_11
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "TextViewTranslationCb"

    const-string/jumbo v1, "onClearTranslation(): no translated text."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public onHideTranslation(Landroid/view/View;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TextViewTranslationCb"

    if-nez v0, :cond_10

    const-string/jumbo v0, "onHideTranslation() shouldn\'t be called before onViewTranslationResponse()."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v0, :cond_39

    nop

    invoke-virtual {v0}, Landroid/text/method/TranslationTransformationMethod;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, v0}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v1, v3}, Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_36
    nop

    const/4 v0, 0x1

    return v0

    :cond_39
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_43

    const-string/jumbo v0, "onHideTranslation(): no translated text."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return v1
.end method

.method public onShowTranslation(Landroid/view/View;)Z
    .registers 8

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    const/4 v1, 0x0

    const-string v2, "TextViewTranslationCb"

    if-eqz v0, :cond_22

    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is already showing translated text."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v1

    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string/jumbo v3, "onShowTranslation() shouldn\'t be called before onViewTranslationResponse()."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/text/method/TranslationTransformationMethod;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/translation/ViewTranslationResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_40
    nop

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    new-instance v3, Landroid/text/method/TranslationTransformationMethod;

    invoke-direct {v3, v0, v2}, Landroid/text/method/TranslationTransformationMethod;-><init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V

    iput-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    :cond_4c
    iget-object v2, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3, v2}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v1, v4}, Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/view/translation/ViewTranslationResponse;->getKeys()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android:content_description"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    nop

    invoke-virtual {v0, v5}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7f

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7f
    const/4 v4, 0x1

    return v4
.end method

.method public setAnimationDurationMillis(I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    return-void
.end method
