# classes4.dex

.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field private mIndex:I

.field private mNestedViews:Landroid/widget/RemoteViews;

.field private mStableId:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .registers 10

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V
    .registers 7

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V
    .registers 12

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    return-void
.end method

.method private findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I
    .registers 7

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v2, v3, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
    .registers 23

    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v16

    iget-object v8, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object v10, v6

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-static/range {v8 .. v15}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    if-eqz v9, :cond_60

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v0

    iget v1, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    :cond_34
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v0, :cond_39

    goto :goto_3b

    :cond_39
    move/from16 v0, v16

    :goto_3b
    move v10, v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9, v10}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    if-ltz v16, :cond_50

    add-int/lit8 v0, v16, 0x1

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    :cond_50
    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p5

    move-object v5, v6

    move-object v13, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V

    return-object v12

    :cond_60
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static synthetic lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V
    .registers 4

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method static synthetic lambda$initActionAsync$2()V
    .registers 0

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 22

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    move-object/from16 v9, p1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewGroup;

    if-nez v10, :cond_14

    return-void

    :cond_14
    invoke-static {v10}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v11

    iget-object v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v12

    iget-object v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v1

    and-int/lit8 v13, v1, 0x6

    if-eqz v13, :cond_2b

    invoke-virtual {v12, v13}, Landroid/widget/RemoteViews;->addFlags(I)V

    :cond_2b
    const/4 v14, -0x1

    if-ltz v11, :cond_6b

    iget v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v1, v14, :cond_6b

    invoke-direct {v0, v10, v12}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I

    move-result v15

    if-ltz v15, :cond_6b

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_62

    if-ge v11, v15, :cond_49

    sub-int v1, v15, v11

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_49
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v10, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v16, v7

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    return-void

    :cond_62
    move-object/from16 v16, v7

    sub-int v1, v15, v11

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_6b
    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v2, v14, :cond_80

    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    :cond_80
    iget v2, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v2, :cond_85

    goto :goto_86

    :cond_85
    move v2, v11

    :goto_86
    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-ltz v11, :cond_94

    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v10, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    :cond_94
    return-void
.end method

.method public getActionTag()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 24

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    if-eqz v9, :cond_e1

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    goto/16 :goto_e1

    :cond_19
    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v4

    if-ltz v4, :cond_cb

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_cb

    iget-object v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v5}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v2

    if-ltz v2, :cond_c5

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/RemoteViews$ViewTree;

    invoke-static/range {v18 .. v18}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a6

    if-le v2, v4, :cond_61

    sub-int v0, v2, v4

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    :cond_61
    add-int/lit8 v0, v4, 0x1

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v18 .. v18}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v17

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    invoke-static/range {v10 .. v17}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v10

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v10, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v11

    if-eqz v11, :cond_9c

    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move v13, v2

    move-object v2, v10

    move-object v14, v3

    move-object v3, v11

    move v15, v4

    move v4, v13

    move-object/from16 v16, v5

    move v5, v15

    move-object/from16 v17, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V

    return-object v12

    :cond_9c
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v10}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_a6
    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    sub-int v2, v13, v15

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v15, v2}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;

    invoke-direct {v5, v6, v15, v13}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    :cond_c5
    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    goto :goto_ce

    :cond_cb
    move v15, v4

    move-object/from16 v16, v5

    :goto_ce
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    :cond_e1
    :goto_e1
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$initActionAsync$0$android-widget-RemoteViews$ViewGroupActionAdd(Landroid/view/View;)Z
    .registers 4

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public mergeBehavior()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public prefersAsyncApply()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method public final visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
