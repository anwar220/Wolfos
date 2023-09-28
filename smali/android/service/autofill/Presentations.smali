# classes3.dex

.class public final Landroid/service/autofill/Presentations;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Presentations$Builder;
    }
.end annotation


# instance fields
.field private mDialogPresentation:Landroid/widget/RemoteViews;

.field private mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private mMenuPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic -$$Nest$smdefaultDialogPresentation()Landroid/widget/RemoteViews;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultMenuPresentation()Landroid/widget/RemoteViews;
    .registers 1

    invoke-static {}, Landroid/service/autofill/Presentations;->defaultMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/Presentations;->mMenuPresentation:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iput-object p3, p0, Landroid/service/autofill/Presentations;->mDialogPresentation:Landroid/widget/RemoteViews;

    iput-object p4, p0, Landroid/service/autofill/Presentations;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-direct {p0}, Landroid/service/autofill/Presentations;->onConstructed()V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static defaultDialogPresentation()Landroid/widget/RemoteViews;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultMenuPresentation()Landroid/widget/RemoteViews;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private onConstructed()V
    .registers 3

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mMenuPresentation:Landroid/widget/RemoteViews;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mDialogPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All presentations are null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inline presentation is required for mInlineTooltipPresentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public getDialogPresentation()Landroid/widget/RemoteViews;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object v0
.end method

.method public getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object v0
.end method

.method public getMenuPresentation()Landroid/widget/RemoteViews;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Presentations;->mMenuPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method
