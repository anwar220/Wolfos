# classes3.dex

.class public Landroid/provider/CallLog$AddCallParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    }
.end annotation


# instance fields
.field public mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field public mAddForAllUsers:Z

.field public mCallBlockReason:I

.field public mCallScreeningAppName:Ljava/lang/CharSequence;

.field public mCallScreeningComponentName:Ljava/lang/String;

.field public mCallType:I

.field public mCallerInfo:Landroid/telecom/CallerInfo;

.field public mDataUsage:J

.field public mDuration:I

.field public mFeatures:I

.field private mIsPhoneAccountMigrationPending:I

.field public mIsRead:Z

.field public mLatitude:D

.field public mLongitude:D

.field public mMissedReason:J

.field public mNumber:Ljava/lang/String;

.field public mPictureUri:Landroid/net/Uri;

.field public mPostDialDigits:Ljava/lang/String;

.field public mPresentation:I

.field public mPriority:I

.field public mStart:J

.field public mSubject:Ljava/lang/String;

.field public mUserToBeInsertedTo:Landroid/os/UserHandle;

.field public mViaNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return p0
.end method

.method private constructor <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V
    .registers 46

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v1, 0x7ff8000000000000L  # Double.NaN

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    move/from16 v5, p5

    iput v5, v0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    move/from16 v6, p6

    iput v6, v0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    move/from16 v7, p7

    iput v7, v0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    move/from16 v11, p11

    iput v11, v0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    move/from16 v1, p17

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    move/from16 v1, p22

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    move-object/from16 v2, p23

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    move-wide/from16 v1, p26

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    move/from16 v2, p29

    iput v2, v0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog$AddCallParams-IA;)V
    .registers 31

    invoke-direct/range {p0 .. p29}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V

    return-void
.end method
