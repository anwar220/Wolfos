# classes3.dex

.class public final Landroid/service/autofill/Presentations$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Presentations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mDialogPresentation:Landroid/widget/RemoteViews;

.field private mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private mMenuPresentation:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/autofill/Presentations;
    .registers 7

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    :cond_19
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    :cond_28
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    :cond_37
    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    invoke-static {}, Landroid/service/autofill/Presentations;->-$$Nest$smdefaultInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    :cond_46
    new-instance v0, Landroid/service/autofill/Presentations;

    iget-object v1, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v3, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/autofill/Presentations;-><init>(Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)V

    return-object v0
.end method

.method public setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method public setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method public setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/Presentations$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/autofill/Presentations$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/autofill/Presentations$Builder;->mMenuPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method
