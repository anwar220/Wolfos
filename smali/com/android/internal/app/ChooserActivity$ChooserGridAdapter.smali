# classes4.dex

.class public final Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUM_EXPANSIONS_TO_HIDE_AZ_LABEL:I = 0x14

.field private static final VIEW_TYPE_AZ_LABEL:I = 0x4

.field private static final VIEW_TYPE_CALLER_AND_RANK:I = 0x5

.field private static final VIEW_TYPE_CONTENT_PREVIEW:I = 0x2

.field private static final VIEW_TYPE_DIRECT_SHARE:I = 0x0

.field private static final VIEW_TYPE_FOOTER:I = 0x6

.field private static final VIEW_TYPE_NORMAL:I = 0x1

.field private static final VIEW_TYPE_PROFILE:I = 0x3


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field private mChooserTargetWidth:I

.field private mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

.field private mFooterHeight:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutRequested:Z

.field private mShowAzLabelIfPoss:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private canExpandDirectShare()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x109005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v2, 0x1020451

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    return-object v0
.end method

.method private loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 13

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v3

    instance-of v4, p1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v3, :cond_5f

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move v7, v5

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    if-eqz v4, :cond_4e

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLines(I)V

    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4e
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v7, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    if-eqz v4, :cond_8a

    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    :cond_8a
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private setViewBounds(Landroid/view/View;II)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    :cond_10
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_14
    return-void
.end method


# virtual methods
.method bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v5

    add-int v6, v3, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_18
    invoke-virtual {v0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v8

    if-eq v8, v4, :cond_23

    if-lt v6, v3, :cond_23

    add-int/lit8 v6, v6, -0x1

    goto :goto_18

    :cond_23
    const/4 v8, 0x0

    if-ne v6, v3, :cond_a1

    iget-object v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v9, v3}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v9, :cond_a1

    const v9, 0x102024e

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_a1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v11, 0x1040211

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    const/4 v11, 0x2

    new-array v12, v11, [F

    fill-array-data v12, :array_c8

    const-string v13, "alpha"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v13}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10500a4

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    new-array v15, v7, [F

    aput v10, v15, v8

    const-string/jumbo v10, "translationY"

    invoke-static {v9, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0xc8

    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v7, v11, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    const/4 v8, 0x1

    aput-object v10, v7, v8

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    :cond_a1
    const/4 v7, 0x0

    :goto_a2
    if-ge v7, v5, :cond_c7

    invoke-virtual {v1, v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    add-int v9, v3, v7

    if-gt v9, v6, :cond_bf

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    add-int v10, v3, v7

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setItemIndex(II)V

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1, v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_c4

    :cond_bf
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    :goto_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    :cond_c7
    return-void

    :array_c8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .registers 6

    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    iput v1, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    return-void
.end method

.method public calculateChooserTargetWidth(I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    div-int v2, p1, v2

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    if-eq v2, v3, :cond_25

    iput v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/4 v0, 0x1

    return v0

    :cond_25
    return v0
.end method

.method public consumeLayoutRequest()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    return v0
.end method

.method createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 14

    const v0, 0x1090063

    const/4 v1, 0x0

    if-nez p1, :cond_56

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090064

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/ViewGroup;

    aput-object v9, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    move-object v3, v10

    move-object v4, v2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;-><init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V

    iput-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-direct {p0, v10}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    return-object v1

    :cond_56
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;-><init>(Landroid/view/ViewGroup;II)V

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    return-object v1
.end method

.method public getAzLabelRowCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getCallerAndRankedTargetRowCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getFooterRowCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount()I
    .registers 3

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getFooterRowCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    move v1, v0

    if-lez v1, :cond_b

    if-ge p1, v0, :cond_b

    const/4 v2, 0x2

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    if-lez v1, :cond_17

    if-ge p1, v0, :cond_17

    const/4 v2, 0x3

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    if-lez v1, :cond_23

    if-ge p1, v0, :cond_23

    const/4 v2, 0x0

    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    if-lez v1, :cond_2f

    if-ge p1, v0, :cond_2f

    const/4 v2, 0x5

    return v2

    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    if-lez v1, :cond_3b

    if-ge p1, v0, :cond_3b

    const/4 v2, 0x4

    return v2

    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_45

    const/4 v2, 0x6

    return v2

    :cond_45
    return v3
.end method

.method public getListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object v0
.end method

.method getListPosition(I)I
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {}, Lcom/android/internal/app/ResolverActivityStub;->getInstance()Lcom/android/internal/app/ResolverActivityStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStub;->useAospShareSheet()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    goto :goto_21

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCountLegacy()I

    move-result v0

    :goto_21
    nop

    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getMaxRankedTargets()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-ge p1, v1, :cond_3b

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    mul-int/2addr v2, p1

    return v2

    :cond_3b
    sub-int/2addr p1, v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v3

    if-ge p1, v3, :cond_58

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    return v4

    :cond_58
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr p1, v4

    add-int v4, v2, v0

    add-int/2addr v4, p1

    return v4
.end method

.method public getProfileRowCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public getRowCount()I
    .registers 5

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getRowType(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public getServiceTargetRowCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemRowCount()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method public getTargetType(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    return v0
.end method

.method public handleScroll(Landroid/view/View;II)V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->handleScroll(Lcom/android/internal/widget/RecyclerView;III)V

    :cond_1b
    return-void
.end method

.method public hideContentPreview()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$loadViewsIntoGroup$0$com-android-internal-app-ChooserActivity$ChooserGridAdapter(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldShowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    :cond_18
    return v2
.end method

.method public onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    goto :goto_19

    :sswitch_b
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    goto :goto_19

    :sswitch_12
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V

    nop

    :goto_19
    return-void

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_b
        0x5 -> :sswitch_12
    .end sparse-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 7

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_58

    const/4 v0, 0x0

    return-object v0

    :pswitch_6  #0x6
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1

    :pswitch_20  #0x4
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    :pswitch_2c  #0x3
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    :pswitch_38  #0x2
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcreateContentPreviewView(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    :pswitch_44  #0x1
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v0

    :pswitch_53  #0x0, 0x5
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_44  #00000001
        :pswitch_38  #00000002
        :pswitch_2c  #00000003
        :pswitch_20  #00000004
        :pswitch_53  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public setFooterHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    return-void
.end method

.method shouldCellSpan(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method updateDirectShareExpansion()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_29

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->collapse(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_28

    :cond_23
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->expand(Lcom/android/internal/widget/RecyclerView;)V

    :goto_28
    return-void

    :cond_29
    :goto_29
    return-void
.end method
