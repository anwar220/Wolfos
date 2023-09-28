# classes3.dex

.class public Landroid/telecom/CallScreeningService$CallResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$CallResponse$Builder;,
        Landroid/telecom/CallScreeningService$CallResponse$CallComposerAttachmentType;
    }
.end annotation


# static fields
.field public static final CALL_COMPOSER_ATTACHMENT_LOCATION:I = 0x2

.field public static final CALL_COMPOSER_ATTACHMENT_PICTURE:I = 0x1

.field public static final CALL_COMPOSER_ATTACHMENT_PRIORITY:I = 0x8

.field public static final CALL_COMPOSER_ATTACHMENT_SUBJECT:I = 0x4

.field private static final NUM_CALL_COMPOSER_ATTACHMENT_TYPES:I = 0x4


# instance fields
.field private final mCallComposerAttachmentsToShow:I

.field private final mShouldDisallowCall:Z

.field private final mShouldRejectCall:Z

.field private final mShouldScreenCallViaAudioProcessing:Z

.field private final mShouldSilenceCall:Z

.field private final mShouldSkipCallLog:Z

.field private final mShouldSkipNotification:Z


# direct methods
.method private constructor <init>(ZZZZZZI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Invalid response state for allowed call."

    if-nez p1, :cond_14

    if-nez p2, :cond_e

    if-nez p4, :cond_e

    if-nez p5, :cond_e

    goto :goto_14

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_14
    if-eqz p1, :cond_1f

    if-nez p6, :cond_19

    goto :goto_1f

    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    :goto_1f
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    iput-boolean p2, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    iput-boolean p4, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    iput-boolean p5, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    iput-boolean p3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSilenceCall:Z

    iput-boolean p6, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldScreenCallViaAudioProcessing:Z

    iput p7, p0, Landroid/telecom/CallScreeningService$CallResponse;->mCallComposerAttachmentsToShow:I

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZILandroid/telecom/CallScreeningService$CallResponse-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZZZI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telecom/CallScreeningService$CallResponse;

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    iget-boolean v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    iget-boolean v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSilenceCall:Z

    iget-boolean v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSilenceCall:Z

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    iget-boolean v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    iget-boolean v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldScreenCallViaAudioProcessing:Z

    iget-boolean v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mShouldScreenCallViaAudioProcessing:Z

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mCallComposerAttachmentsToShow:I

    iget v4, v2, Landroid/telecom/CallScreeningService$CallResponse;->mCallComposerAttachmentsToShow:I

    if-ne v3, v4, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public getCallComposerAttachmentsToShow()I
    .registers 2

    iget v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mCallComposerAttachmentsToShow:I

    return v0
.end method

.method public getDisallowCall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    return v0
.end method

.method public getRejectCall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    return v0
.end method

.method public getShouldScreenCallViaAudioProcessing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldScreenCallViaAudioProcessing:Z

    return v0
.end method

.method public getSilenceCall()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSilenceCall:Z

    return v0
.end method

.method public getSkipCallLog()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    return v0
.end method

.method public getSkipNotification()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSilenceCall:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldScreenCallViaAudioProcessing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mCallComposerAttachmentsToShow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toParcelable()Landroid/telecom/CallScreeningService$ParcelableCallResponse;
    .registers 11

    new-instance v9, Landroid/telecom/CallScreeningService$ParcelableCallResponse;

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    iget-boolean v2, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSilenceCall:Z

    iget-boolean v4, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    iget-boolean v5, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    iget-boolean v6, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldScreenCallViaAudioProcessing:Z

    iget v7, p0, Landroid/telecom/CallScreeningService$CallResponse;->mCallComposerAttachmentsToShow:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telecom/CallScreeningService$ParcelableCallResponse;-><init>(ZZZZZZILandroid/telecom/CallScreeningService$ParcelableCallResponse-IA;)V

    return-object v9
.end method
