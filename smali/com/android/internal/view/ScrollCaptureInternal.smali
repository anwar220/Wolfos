# classes4.dex

.class public Lcom/android/internal/view/ScrollCaptureInternal;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final DOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScrollCaptureInternal"

.field public static final TYPE_FIXED:I = 0x0

.field private static final TYPE_OPAQUE:I = 0x3

.field public static final TYPE_RECYCLING:I = 0x2

.field public static final TYPE_SCROLLING:I = 0x1

.field private static final UP:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detectScrollingType(Landroid/view/View;)I
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_10

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v4, 0x3

    if-nez v1, :cond_16

    return v4

    :cond_16
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v0, :cond_21

    return v5

    :cond_21
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_2b

    return v4

    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_32

    return v0

    :cond_32
    const-string v1, "ScrollCaptureInternal"

    const-string v4, "hint: scrollY == 0"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_40

    return v5

    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ne v1, v0, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    return v0

    :cond_55
    return v5
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-ltz p1, :cond_3f

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_25} :catch_26

    goto :goto_3e

    :catch_26
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3e
    goto :goto_41

    :cond_3f
    const-string v1, "NO_ID"

    :goto_41
    return-object v1
.end method


# virtual methods
.method public requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .registers 8

    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->detectScrollingType(Landroid/view/View;)I

    move-result v0

    packed-switch v0, :pswitch_data_52

    goto :goto_50

    :pswitch_8  #0x3
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_50

    const-string v1, "ScrollCaptureInternal"

    const-string/jumbo v2, "scroll capture: Using WebView support"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/webkit/WebView;

    new-instance v3, Lcom/android/internal/view/WebViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/WebViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    :pswitch_22  #0x2
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_34

    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/android/internal/view/ListViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/ListViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    :cond_34
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/view/RecyclerViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/RecyclerViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    :pswitch_42  #0x1
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/view/ScrollViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/ScrollViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    :cond_50
    :goto_50
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_22  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method
