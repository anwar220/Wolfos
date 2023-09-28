# classes.dex

.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
    }
.end annotation


# static fields
.field private static final FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final KEY_INFLATION_ID:Ljava/lang/String; = "inflation_id"

.field private static final KEY_JAILED_ARRAY:Ljava/lang/String; = "jail"

.field private static final LAST_RESOURCE_COLOR_ID:I = 0x106005d

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I


# instance fields
.field mAppWidgetId:I

.field private mAsyncExecutor:Ljava/util/concurrent/Executor;

.field private mColorMapping:Landroid/util/SparseIntArray;

.field mColorMappingChanged:Z

.field private mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field mContext:Landroid/content/Context;

.field private mCurrentSize:Landroid/util/SizeF;

.field private mDelayedRestoredInflationId:J

.field private mDelayedRestoredState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private mLastExecutionSignal:Landroid/os/CancellationSignal;

.field private mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

.field private mLastInflatedRemoteViewsId:J

.field private mOnLightBackground:Z

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method public static synthetic $r8$lambda$9EV54ng8G45UZMvdYGsbET4ioQY(Landroid/appwidget/AppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    return-void
.end method

.method public static synthetic $r8$lambda$wkvus0S1Q320lI4MfL4EhtUn5Hk(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onDefaultViewClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInteractionHandler(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V
    .registers 2

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V
    .registers 3

    iput-wide p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 5

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method private applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez p1, :cond_1a

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_14

    const-string v0, "AppWidgetHostView"

    const-string v2, "Error inflating RemoteViews"

    invoke-static {v0, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :cond_1a
    if-nez p2, :cond_22

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    :cond_22
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_2b

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    :cond_2b
    return-void
.end method

.method private computeSizeFromLayout(IIII)Landroid/util/SizeF;
    .registers 10

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/util/SizeF;

    sub-int v2, p3, p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-int v3, p4, p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method private generateId()I
    .registers 3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    return v1
.end method

.method private getDefaultPadding()Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    invoke-static {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_a

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_d

    :cond_a
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    const v1, 0x105011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    const v1, 0x105011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    const v1, 0x105011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method private getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;
    .registers 3

    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method private handleViewError()V
    .registers 6

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    const/4 v1, 0x2

    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    return-void
.end method

.method private inflateAsync(Landroid/widget/RemoteViews;)V
    .registers 12

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_11
    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_38

    :try_start_1d
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v1, 0x1

    invoke-direct {v6, p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :cond_38
    :goto_38
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-nez v1, :cond_54

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_54
    return-void
.end method

.method private isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ne v1, v3, :cond_2b

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v1, v3, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2b
    :goto_2b
    return v2

    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Class;)Z
    .registers 2

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private onDefaultViewClicked(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    :cond_3f
    return-void
.end method

.method private reapplyLastRemoteViews()V
    .registers 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method protected applyRemoteViews(Landroid/widget/RemoteViews;Z)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_11
    if-nez p1, :cond_20

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    return-void

    :cond_19
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v1

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_84

    :cond_20
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v3

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getDarkTextViews()Landroid/widget/RemoteViews;

    move-result-object v3

    :cond_30
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_3a

    if-eqz p2, :cond_3a

    invoke-direct {p0, v3}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    return-void

    :cond_3a
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v4, :cond_67

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_67

    :try_start_4c
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    move-object v1, v4

    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_63} :catch_65

    const/4 v0, 0x1

    goto :goto_67

    :catch_65
    move-exception v4

    move-object v2, v4

    :cond_67
    :goto_67
    if-nez v1, :cond_81

    :try_start_69
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, v3

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_7e} :catch_7f

    goto :goto_81

    :catch_7f
    move-exception v4

    move-object v2, v4

    :cond_81
    :goto_81
    const/4 v4, 0x1

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :goto_84
    invoke-direct {p0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method public createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 12

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_14

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    :cond_14
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    return-object v2

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :goto_25
    array-length v5, p1

    if-ge v4, v5, :cond_45

    aget v5, p1, v4

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_42

    aget-object v6, p2, v4

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, p2, v4

    invoke-static {v5}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    const-string v2, "android.widget.extra.SHARED_ELEMENT_BOUNDS"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/util/Pair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Pair;

    invoke-static {v2, v4}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    return-object v2

    :cond_69
    return-object v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_25

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing view failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHostView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :goto_25
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    instance-of v4, v0, Landroid/os/Bundle;

    if-eqz v4, :cond_22

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "jail"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    const-wide/16 v5, -0x1

    const-string v7, "inflation_id"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_22
    if-nez v1, :cond_2a

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v4

    :cond_2a
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    iput-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    iget-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    const-string v4, "inflation_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    :goto_7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public getAppWidgetId()I
    .registers 2

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 12

    const-string v0, "appWidgetCategory"

    const-string v1, "AppWidgetHostView"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_5c

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-virtual {v5, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    move-object v5, v6

    sget-object v6, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v5, v6}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iget v7, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_49

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    if-nez v9, :cond_47

    move v10, v8

    goto :goto_48

    :cond_47
    move v10, v9

    :goto_48
    move v8, v10

    :cond_49
    const/4 v0, 0x0

    invoke-virtual {v5, v8, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    instance-of v0, v2, Landroid/widget/AdapterView;

    if-nez v0, :cond_5b

    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5b
    goto :goto_61

    :cond_5c
    const-string v0, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_61} :catch_62

    :goto_61
    goto :goto_64

    :catch_62
    move-exception v0

    move-object v3, v0

    :goto_64
    if-eqz v3, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inflating AppWidget "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7e
    if-nez v2, :cond_84

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v2

    :cond_84
    return-object v2
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x104043f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method protected getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .registers 6

    const-string v0, "AppWidgetHostView"

    :try_start_2
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v2}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1f} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1f} :catch_20

    :cond_1f
    return-object v2

    :catch_20
    move-exception v1

    const-string v2, "Error trying to create the remote context."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method synthetic lambda$getHandler$1$android-appwidget-AppWidgetHostView(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 7

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    if-eqz p1, :cond_12

    invoke-interface {p1, p2, p3, p4}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result v0

    return v0

    :cond_12
    nop

    invoke-virtual {p4, p2}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p2, p3, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/appwidget/AppWidgetHostView;->computeSizeFromLayout(IIII)Landroid/util/SizeF;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_30

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_30

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetHostView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_30
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_3f

    :catch_34
    move-exception v0

    const-string v1, "AppWidgetHostView"

    const-string v2, "Remote provider threw runtime exception, using error view instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    :goto_3f
    return-void
.end method

.method protected prepareView(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_f

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_f
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public resetColorResources()V
    .registers 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    :cond_12
    return-void
.end method

.method restoreInstanceState()V
    .registers 8

    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4c

    iget-wide v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_11

    goto :goto_4c

    :cond_11
    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    :try_start_16
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_4b

    :catch_1a
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v5, :cond_3a

    const-string/jumbo v5, "null"

    goto :goto_3e

    :cond_3a
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppWidgetHostView"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void

    :cond_4c
    :goto_4c
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 9

    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    if-eqz p2, :cond_40

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000  # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_3d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040925

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3d
    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_40
    return-void
.end method

.method public setColorResources(Landroid/util/SparseIntArray;)V
    .registers 4

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_b

    invoke-direct {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_a
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method public setOnLightBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 3

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method public updateAppWidgetOptions(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .registers 24

    move-object/from16 v0, p0

    if-nez p1, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_c

    :cond_a
    move-object/from16 v1, p1

    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    if-eqz p6, :cond_2f

    move v7, v6

    goto :goto_30

    :cond_2f
    move v7, v4

    :goto_30
    sub-int v7, p2, v7

    if-eqz p6, :cond_36

    move v8, v6

    goto :goto_37

    :cond_36
    move v8, v5

    :goto_37
    sub-int v8, p3, v8

    if-eqz p6, :cond_3d

    move v9, v6

    goto :goto_3e

    :cond_3d
    move v9, v4

    :goto_3e
    sub-int v9, p4, v9

    if-eqz p6, :cond_43

    goto :goto_44

    :cond_43
    move v6, v5

    :goto_44
    sub-int v6, p5, v6

    iget-object v10, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    iget v11, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "appWidgetMaxHeight"

    move-object/from16 p1, v2

    const-string v2, "appWidgetMaxWidth"

    move/from16 v16, v3

    const-string v3, "appWidgetMinHeight"

    if-ne v7, v14, :cond_77

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v8, v14, :cond_77

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v9, v14, :cond_77

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-eq v6, v14, :cond_78

    :cond_77
    const/4 v12, 0x1

    :cond_78
    if-eqz v12, :cond_93

    invoke-virtual {v1, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "appWidgetSizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_93
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const v7, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v8, 0x0

    const v9, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_36
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8c

    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    new-instance v14, Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v15

    sub-float/2addr v15, v4

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v17

    move/from16 v18, v3

    sub-float v3, v17, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v14, v15, v2}, Landroid/util/SizeF;-><init>(FF)V

    move-object v2, v14

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v18

    goto :goto_36

    :cond_8c
    move-object/from16 v12, p2

    move-object/from16 v16, v2

    move/from16 v18, v3

    iget v2, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    return-void

    :cond_a5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v2

    float-to-int v11, v7

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int v11, v9

    const-string v13, "appWidgetMinHeight"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int v11, v8

    const-string v13, "appWidgetMaxWidth"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int v11, v10

    const-string v13, "appWidgetMaxHeight"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    return-void
.end method

.method viewDataChanged(I)V
    .registers 6

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_29

    :cond_1c
    if-nez v2, :cond_29

    instance-of v3, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v3, :cond_29

    move-object v3, v1

    check-cast v3, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v3}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    nop

    :cond_29
    :goto_29
    return-void
.end method
