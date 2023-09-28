# classes4.dex

.class public Lcom/android/internal/widget/PeopleHelper;
.super Ljava/lang/Object;


# static fields
.field private static final COLOR_SHIFT_AMOUNT:F = 60.0f

.field private static final IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAvatarSize:I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[\\p{C}\\p{Z}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PeopleHelper;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    nop

    const-string v0, "[!@#$%&*()_+=|<>?{}\\[\\]~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PeopleHelper;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private findColor(Ljava/lang/CharSequence;I)I
    .registers 14

    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    const/high16 v3, 0x40800000  # 4.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000  # 0.5f

    sub-float/2addr v2, v3

    float-to-double v3, v2

    const-wide v5, 0x3fd3333340000000L  # 0.30000001192092896

    sub-double v7, v5, v0

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float v2, v3

    float-to-double v3, v2

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v7, v0

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v2, v3

    const/high16 v3, 0x42700000  # 60.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/android/internal/util/ContrastColorUtil;->getShiftedColor(II)I

    move-result v3

    return v3
.end method

.method private getPureName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/android/internal/widget/PeopleHelper;->IGNORABLE_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$animateViewForceHidden$0(Lcom/android/internal/widget/CachingIconView;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    return-void
.end method


# virtual methods
.method public animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->willBeForceHidden()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-ne p2, v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setWillBeForceHidden(Z)V

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p2, :cond_29

    move v4, v2

    goto :goto_2a

    :cond_29
    move v4, v3

    :goto_2a
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_39

    const/4 v3, 0x0

    :cond_39
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_42

    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_44

    :cond_42
    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_44
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xa0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    goto :goto_63

    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CachingIconView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_63
    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 13

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    sget-object v0, Lcom/android/internal/widget/PeopleHelper;->SPECIAL_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_87

    :cond_19
    iget v0, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/PeopleHelper;->findColor(Ljava/lang/CharSequence;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/android/internal/widget/PeopleHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {v4}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L  # 0.5

    cmpl-double v5, v5, v7

    const/4 v6, 0x1

    if-lez v5, :cond_47

    move v5, v6

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_4f

    const/high16 v8, -0x1000000

    goto :goto_50

    :cond_4f
    const/4 v8, -0x1

    :goto_50
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v6, :cond_61

    iget v6, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v6, v6

    const/high16 v8, 0x3f000000  # 0.5f

    goto :goto_67

    :cond_61
    iget v6, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    int-to-float v6, v6

    const v8, 0x3e99999a  # 0.3f

    :goto_67
    mul-float/2addr v6, v8

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v3

    sub-float v3, v2, v6

    float-to-int v3, v3

    int-to-float v6, v3

    iget-object v7, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    return-object v6

    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mContext:Landroid/content/Context;

    const v1, 0x108064a

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/PeopleHelper;->findColor(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/internal/widget/PeopleHelper;->getPureName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object p2

    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_19} :catch_1a

    return-object v1

    :catch_1a
    move-exception v1

    return-object p2
.end method

.method public findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ ]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3e

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3e

    if-eqz v3, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3e
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/PeopleHelper;->mAvatarSize:I

    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_5c

    :cond_28
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_36

    goto :goto_5c

    :cond_36
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_4e

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/PeopleHelper;->findNameSplit(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    :cond_56
    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_5f
    return-object v0
.end method

.method public maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_23

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz p2, :cond_1c

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setCanHideSenderIfFirst(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_23
    return-void
.end method
