# classes2.dex

.class final Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;
.super Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AugmentedAutofillManagerClient"
.end annotation


# instance fields
.field private final mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method

.method private getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 8

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    const-string v1, "getView("

    const-string v2, "AutofillManager"

    if-nez v0, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): no autofill client"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_26
    invoke-interface {v0, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): could not find view"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-object v3
.end method

.method static synthetic lambda$autofill$0(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic lambda$requestAutofill$3(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->requestAutofillFromNewSession(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$requestHideFillUi$2(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic lambda$requestShowFillUi$1(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method


# virtual methods
.method public autofill(ILjava/util/List;Ljava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_18

    new-instance v7, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method public getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;
    .registers 12

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v8, v3, v7

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    aget v5, v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    aget v7, v3, v7

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v7, v9

    invoke-direct {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Coordinates for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillManager"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-object v4
.end method

.method public getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    .registers 9

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getViewNodeParcelable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): could not find view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_31
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x2000

    if-nez v4, :cond_65

    new-instance v4, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    invoke-direct {v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    if-eqz v5, :cond_65

    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    invoke-direct {v1, v5}, Landroid/app/assist/AssistStructure$ViewNodeParcelable;-><init>(Landroid/app/assist/AssistStructure$ViewNode;)V

    return-object v1

    :cond_65
    return-object v1
.end method

.method public requestAutofill(ILandroid/view/autofill/AutofillId;)Z
    .registers 8

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x0

    const-string v2, "AutofillManager"

    if-eqz v0, :cond_3e

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmSessionId(Landroid/view/autofill/AutofillManager;)I

    move-result v3

    if-eq v3, p1, :cond_14

    goto :goto_3e

    :cond_14
    invoke-direct {p0, v0, p2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->getView(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_34

    :cond_21
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2a

    const-string v1, "requestAutofill() by AugmentedAutofillService."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v3}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1

    :cond_34
    :goto_34
    sget-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_3d

    const-string v4, "View not available or is not on focus"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v1

    :cond_3e
    :goto_3e
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_47

    const-string v3, "Autofill not available or sessionId doesn\'t match"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return v1
.end method

.method public requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_1d

    new-instance v10, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/AutofillManager$AugmentedAutofillManagerClient$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->-$$Nest$mpost(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method
