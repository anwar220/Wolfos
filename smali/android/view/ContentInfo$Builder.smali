# classes3.dex

.class public final Landroid/view/ContentInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClip:Landroid/content/ClipData;

.field private mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

.field private mLinkUri:Landroid/net/Uri;

.field private mSource:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmClip(Landroid/view/ContentInfo$Builder;)Landroid/content/ClipData;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo$Builder;)Landroid/view/DragAndDropPermissions;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtras(Landroid/view/ContentInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/view/ContentInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo$Builder;)Landroid/view/inputmethod/InputContentInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkUri(Landroid/view/ContentInfo$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSource(Landroid/view/ContentInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return p0
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    iput p2, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmClip(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmSource(Landroid/view/ContentInfo;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmFlags(Landroid/view/ContentInfo;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmLinkUri(Landroid/view/ContentInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmExtras(Landroid/view/ContentInfo;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/ContentInfo;
    .registers 3

    new-instance v0, Landroid/view/ContentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ContentInfo;-><init>(Landroid/view/ContentInfo$Builder;Landroid/view/ContentInfo-IA;)V

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method public setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFlags(I)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSource(I)Landroid/view/ContentInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return-object p0
.end method
