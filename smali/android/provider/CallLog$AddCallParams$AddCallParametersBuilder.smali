# classes3.dex

.class public final Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog$AddCallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCallParametersBuilder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddForAllUsers:Z

.field private mCallBlockReason:I

.field private mCallScreeningAppName:Ljava/lang/CharSequence;

.field private mCallScreeningComponentName:Ljava/lang/String;

.field private mCallType:I

.field private mCallerInfo:Landroid/telecom/CallerInfo;

.field private mDataUsage:Ljava/lang/Long;

.field private mDuration:I

.field private mFeatures:I

.field private mIsPhoneAccountMigrationPending:I

.field private mIsRead:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mMissedReason:J

.field private mNumber:Ljava/lang/String;

.field private mPictureUri:Landroid/net/Uri;

.field private mPostDialDigits:Ljava/lang/String;

.field private mPresentation:I

.field private mPriority:I

.field private mStart:J

.field private mSubject:Ljava/lang/String;

.field private mUserToBeInsertedTo:Landroid/os/UserHandle;

.field private mViaNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    return-void
.end method


# virtual methods
.method public build()Landroid/provider/CallLog$AddCallParams;
    .registers 36

    move-object/from16 v0, p0

    new-instance v32, Landroid/provider/CallLog$AddCallParams;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v3, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    iget-object v4, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    iget-object v5, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    iget v6, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    iget v7, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    iget v8, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    iget-object v9, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v10, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    iget v12, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    iget-object v13, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-boolean v15, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    move-object/from16 v33, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    move/from16 v17, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    move/from16 v18, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v34, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    move-wide/from16 v21, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    move/from16 v23, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    move-wide/from16 v25, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    move-wide/from16 v27, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    move-object/from16 v29, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    move/from16 v30, v1

    const/16 v31, 0x0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog$AddCallParams-IA;)V

    return-object v32
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    return-object p0
.end method

.method public setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    return-object p0
.end method

.method public setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    return-object p0
.end method

.method public setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method public setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    return-object p0
.end method

.method public setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    return-object p0
.end method

.method public setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    return-object p0
.end method

.method public setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    return-object p0
.end method

.method public setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    return-object p0
.end method

.method public setLatitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    return-object p0
.end method

.method public setLongitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    return-object p0
.end method

.method public setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setPictureUri(Landroid/net/Uri;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    return-object p0
.end method

.method public setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    return-object p0
.end method

.method public setPriority(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    return-object p0
.end method

.method public setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 3

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    return-object p0
.end method

.method public setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    return-object p0
.end method
