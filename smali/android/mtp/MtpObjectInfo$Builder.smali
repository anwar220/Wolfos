# classes2.dex

.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo-IA;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo-IA;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmAssociationDesc(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmAssociationType(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmCompressedSize(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmDateCreated(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmDateModified(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmFormat(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixDepth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixHeight(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixWidth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmKeywords(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmName(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmParent(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmProtectionStatus(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmSequenceNumber(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmStorageId(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbFormat(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbPixHeight(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbPixWidth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/mtp/MtpObjectInfo;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method public setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V

    return-object p0
.end method

.method public setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V

    return-object p0
.end method

.method public setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_10
    if-nez p1, :cond_14

    const-string p1, ""

    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method

.method public setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5

    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V

    return-object p0
.end method
