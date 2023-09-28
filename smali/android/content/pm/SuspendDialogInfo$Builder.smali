# classes.dex

.class public final Landroid/content/pm/SuspendDialogInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SuspendDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDialogMessage:Ljava/lang/String;

.field private mDialogMessageResId:I

.field private mIconResId:I

.field private mNeutralButtonAction:I

.field private mNeutralButtonText:Ljava/lang/String;

.field private mNeutralButtonTextResId:I

.field private mTitle:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialogMessage(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeutralButtonAction(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeutralButtonText(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I

    return-void
.end method


# virtual methods
.method public build()Landroid/content/pm/SuspendDialogInfo;
    .registers 2

    new-instance v0, Landroid/content/pm/SuspendDialogInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/SuspendDialogInfo;-><init>(Landroid/content/pm/SuspendDialogInfo$Builder;)V

    return-object v0
.end method

.method public setIcon(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4

    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I

    return-object p0
.end method

.method public setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4

    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 3

    const-string v0, "Message cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setNeutralButtonAction(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    const-string v1, "Invalid button action"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I

    return-object p0
.end method

.method public setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4

    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    return-object p0
.end method

.method public setNeutralButtonText(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 3

    const-string v0, "Button text cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4

    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 3

    const-string v0, "Title cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
