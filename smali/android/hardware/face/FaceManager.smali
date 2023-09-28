# classes.dex

.class public Landroid/hardware/face/FaceManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFaceConstants;
.implements Landroid/hardware/face/IMiuiFaceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceManager$MyHandler;,
        Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;,
        Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;,
        Landroid/hardware/face/FaceManager$OnEnrollCancelListener;,
        Landroid/hardware/face/FaceManager$GenerateChallengeCallback;,
        Landroid/hardware/face/FaceManager$GetFeatureCallback;,
        Landroid/hardware/face/FaceManager$SetFeatureCallback;,
        Landroid/hardware/face/FaceManager$LockoutResetCallback;,
        Landroid/hardware/face/FaceManager$RemovalCallback;,
        Landroid/hardware/face/FaceManager$EnrollmentCallback;,
        Landroid/hardware/face/FaceManager$FaceDetectionCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationResult;
    }
.end annotation


# static fields
.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_FRAME:I = 0x70

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_CHALLENGE_GENERATED:I = 0x6c

.field private static final MSG_ENROLLMENT_FRAME:I = 0x71

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_FACE_DETECTED:I = 0x6d

.field private static final MSG_GET_FEATURE_COMPLETED:I = 0x6a

.field private static final MSG_REMOVED:I = 0x69

.field private static final MSG_SET_FEATURE_COMPLETED:I = 0x6b

.field private static final TAG:Ljava/lang/String; = "FaceManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field private final mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field private mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

.field private mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private mRemovalFace:Landroid/hardware/face/Face;

.field private final mService:Landroid/hardware/face/IFaceService;

.field private final mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field private mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelAuthentication(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelEnrollment(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelFaceDetect(Landroid/hardware/face/FaceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelFaceDetect(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAcquiredResult(Landroid/hardware/face/FaceManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendAcquiredResult(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/FaceManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/face/FaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAuthenticationFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager;->sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendChallengeGenerated(Landroid/hardware/face/FaceManager;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager;->sendChallengeGenerated(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEnrollResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendEnrollResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEnrollmentFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager;->sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendErrorResult(Landroid/hardware/face/FaceManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendErrorResult(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendFaceDetected(Landroid/hardware/face/FaceManager;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendFaceDetected(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendGetFeatureCompleted(Landroid/hardware/face/FaceManager;Z[I[Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendGetFeatureCompleted(Z[I[Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRemovedResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendRemovedResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSetFeatureCompleted(Landroid/hardware/face/FaceManager;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendSetFeatureCompleted(ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/hardware/face/FaceManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/face/FaceManager$1;-><init>(Landroid/hardware/face/FaceManager;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez p2, :cond_1e

    const-string v0, "FaceManager"

    const-string v1, "FaceAuthenticationManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    new-instance v0, Landroid/hardware/face/FaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelAuthentication(J)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_16

    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_16
    :goto_16
    return-void
.end method

.method private cancelEnrollment(J)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_10

    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method private cancelFaceDetect(J)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    nop

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8a

    goto :goto_67

    :pswitch_5  #0x16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ge p2, v2, :cond_67

    aget-object v0, v1, p2

    return-object v0

    :pswitch_16  #0x15
    const v0, 0x10403c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1e  #0x13
    const v0, 0x10403be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_26  #0xf
    const v0, 0x10403cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2e  #0xe
    const v0, 0x10403c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_36  #0xd
    const v0, 0x10403c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3e  #0xc
    const v0, 0x10403cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_46  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0x10, 0x11, 0x12
    const v0, 0x10403c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4e  #0x3
    const v0, 0x10403c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_56  #0x2
    const v0, 0x10403c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5e  #0x1
    const v0, 0x10403bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_66  #0x0, 0x14
    return-object v0

    :cond_67
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown authentication acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_5e  #00000001
        :pswitch_56  #00000002
        :pswitch_4e  #00000003
        :pswitch_46  #00000004
        :pswitch_46  #00000005
        :pswitch_46  #00000006
        :pswitch_46  #00000007
        :pswitch_46  #00000008
        :pswitch_46  #00000009
        :pswitch_46  #0000000a
        :pswitch_46  #0000000b
        :pswitch_3e  #0000000c
        :pswitch_36  #0000000d
        :pswitch_2e  #0000000e
        :pswitch_26  #0000000f
        :pswitch_46  #00000010
        :pswitch_46  #00000011
        :pswitch_46  #00000012
        :pswitch_1e  #00000013
        :pswitch_66  #00000014
        :pswitch_16  #00000015
        :pswitch_5  #00000016
    .end packed-switch
.end method

.method public static getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_dc

    :pswitch_4  #0x17, 0x18
    goto/16 :goto_b8

    :pswitch_6  #0x16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ge p2, v2, :cond_b8

    aget-object v0, v1, p2

    return-object v0

    :pswitch_17  #0x15
    const v0, 0x10403c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f  #0x13, 0x19, 0x1a
    const v0, 0x10403be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_27  #0x12
    const v0, 0x10403c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2f  #0x11
    const v0, 0x10403c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_37  #0x10
    const v0, 0x10403bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3f  #0xf
    const v0, 0x10403cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_47  #0xe
    const v0, 0x10403c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4f  #0xd
    const v0, 0x10403c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_57  #0xc
    const v0, 0x10403cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5f  #0xb
    const v0, 0x10403bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_67  #0xa
    const v0, 0x10403c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6f  #0x9
    const v0, 0x10403ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_77  #0x8
    const v0, 0x10403cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7f  #0x7
    const v0, 0x10403ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_87  #0x6
    const v0, 0x10403cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8f  #0x5
    const v0, 0x10403c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_97  #0x4
    const v0, 0x10403c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9f  #0x3
    const v0, 0x10403c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a7  #0x2
    const v0, 0x10403c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_af  #0x1
    const v0, 0x10403bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b7  #0x0, 0x14
    return-object v0

    :cond_b8
    :goto_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enrollment acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_b7  #00000000
        :pswitch_af  #00000001
        :pswitch_a7  #00000002
        :pswitch_9f  #00000003
        :pswitch_97  #00000004
        :pswitch_8f  #00000005
        :pswitch_87  #00000006
        :pswitch_7f  #00000007
        :pswitch_77  #00000008
        :pswitch_6f  #00000009
        :pswitch_67  #0000000a
        :pswitch_5f  #0000000b
        :pswitch_57  #0000000c
        :pswitch_4f  #0000000d
        :pswitch_47  #0000000e
        :pswitch_3f  #0000000f
        :pswitch_37  #00000010
        :pswitch_2f  #00000011
        :pswitch_27  #00000012
        :pswitch_1f  #00000013
        :pswitch_b7  #00000014
        :pswitch_17  #00000015
        :pswitch_6  #00000016
        :pswitch_4  #00000017
        :pswitch_4  #00000018
        :pswitch_1f  #00000019
        :pswitch_1f  #0000001a
    .end packed-switch
.end method

.method public static getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_bc

    :pswitch_3  #0x6, 0xd, 0xe
    goto/16 :goto_92

    :pswitch_5  #0x10
    const v0, 0x10403e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d  #0xf
    const v0, 0x10403dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15  #0xc
    const v0, 0x10403d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0xb
    const v0, 0x10403db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_25  #0xa
    const v0, 0x10403df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2d  #0x9
    const v0, 0x10403d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_35  #0x8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge p2, v1, :cond_46

    aget-object v1, v0, p2

    return-object v1

    :cond_46
    const/16 v1, 0x7d3

    if-ne p2, v1, :cond_4d

    const-string v1, "ERROR_TIME_OUT"

    return-object v1

    :cond_4d
    const/16 v1, 0x834

    if-ne p2, v1, :cond_54

    const-string v1, "ERROR_BINDER_CALL"

    return-object v1

    :cond_54
    const/16 v1, 0x7d1

    if-ne p2, v1, :cond_5b

    const-string v1, "ERROR_SERVICE_IS_BUSY"

    return-object v1

    :cond_5b
    const/16 v1, 0x7d2

    if-ne p2, v1, :cond_92

    const-string v1, "ERROR_SERVICE_IS_IDLE"

    return-object v1

    :pswitch_62  #0x7
    const v0, 0x10403d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6a  #0x5
    const v0, 0x10403d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_72  #0x4
    const v0, 0x10403da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7a  #0x3
    const v0, 0x10403dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_82  #0x2
    const v0, 0x10403de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8a  #0x1
    const v0, 0x10403d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_92
    :goto_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10403e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_8a  #00000001
        :pswitch_82  #00000002
        :pswitch_7a  #00000003
        :pswitch_72  #00000004
        :pswitch_6a  #00000005
        :pswitch_3  #00000006
        :pswitch_62  #00000007
        :pswitch_35  #00000008
        :pswitch_2d  #00000009
        :pswitch_25  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_15  #0000000c
        :pswitch_3  #0000000d
        :pswitch_3  #0000000e
        :pswitch_d  #0000000f
        :pswitch_5  #00000010
    .end packed-switch
.end method

.method private static getHelpCode(II)I
    .registers 3

    const/16 v0, 0x16

    if-ne p0, v0, :cond_7

    add-int/lit16 v0, p1, 0x3e8

    goto :goto_8

    :cond_7
    move v0, p0

    :goto_8
    return v0
.end method

.method public static getMappedAcquiredInfo(II)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_e

    :pswitch_5  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15
    return v1

    :pswitch_6  #0x16
    add-int/lit16 v0, p1, 0x3e8

    return v0

    :pswitch_9  #0xa, 0xb, 0xc, 0xd
    return v0

    :pswitch_a  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    const/4 v0, 0x1

    return v0

    :pswitch_c  #0x1, 0x2, 0x3
    return v0

    :pswitch_d  #0x0
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_c  #00000001
        :pswitch_c  #00000002
        :pswitch_c  #00000003
        :pswitch_a  #00000004
        :pswitch_a  #00000005
        :pswitch_a  #00000006
        :pswitch_a  #00000007
        :pswitch_a  #00000008
        :pswitch_a  #00000009
        :pswitch_9  #0000000a
        :pswitch_9  #0000000b
        :pswitch_9  #0000000c
        :pswitch_9  #0000000d
        :pswitch_5  #0000000e
        :pswitch_5  #0000000f
        :pswitch_5  #00000010
        :pswitch_5  #00000011
        :pswitch_5  #00000012
        :pswitch_5  #00000013
        :pswitch_5  #00000014
        :pswitch_5  #00000015
        :pswitch_6  #00000016
    .end packed-switch
.end method

.method private sendAcquiredResult(II)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_12

    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p1, p2}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    invoke-direct {p0, v0}, Landroid/hardware/face/FaceManager;->sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    goto :goto_26

    :cond_12
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_26

    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v3, p1, p2}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    invoke-direct {p0, v0}, Landroid/hardware/face/FaceManager;->sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    goto :goto_27

    :cond_26
    :goto_26
    nop

    :goto_27
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_7
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    :cond_10
    return-void
.end method

.method private sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 7

    if-nez p1, :cond_a

    const-string v0, "FaceManager"

    const-string v1, "Received null authentication frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_a
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    move v2, v1

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v3, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private sendChallengeGenerated(IIJ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$GenerateChallengeCallback;->onGenerateChallengeResult(IIJ)V

    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/face/Face;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_7
    return-void
.end method

.method private sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 14

    if-nez p1, :cond_a

    const-string v0, "FaceManager"

    const-string v1, "Received null enrollment frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_a
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v10

    move v3, v10

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v10}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v11

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getCell()Landroid/hardware/face/FaceEnrollCell;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getStage()I

    move-result v6

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getPan()F

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getTilt()F

    move-result v8

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getDistance()F

    move-result v9

    move-object v4, v11

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private sendErrorResult(II)V
    .registers 7

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    add-int/lit16 v0, p2, 0x3e8

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v1, :cond_16

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_33

    :cond_16
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_24

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_33

    :cond_24
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-eqz v1, :cond_33

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mRemovalFace:Landroid/hardware/face/Face;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private sendFaceDetected(IIZ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-nez v0, :cond_d

    const-string v0, "FaceManager"

    const-string/jumbo v1, "sendFaceDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onFaceDetected(IIZ)V

    return-void
.end method

.method private sendGetFeatureCompleted(Z[I[Z)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$GetFeatureCallback;->onCompleted(Z[I[Z)V

    return-void
.end method

.method private sendRemovedResult(Landroid/hardware/face/Face;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method private sendSetFeatureCompleted(ZI)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$SetFeatureCallback;->onCompleted(ZI)V

    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_2a

    :cond_f
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2a

    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_25

    :try_start_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    new-instance v2, Landroid/hardware/face/FaceManager$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/face/FaceManager$2;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/PowerManager;Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_2c

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_25
    const-string v0, "FaceManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v4, :cond_73

    const-string v5, "FaceManager"

    if-eqz v3, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_70

    move-object/from16 v6, p4

    :try_start_20
    invoke-direct {v1, v6}, Landroid/hardware/face/FaceManager;->useHandler(Landroid/os/Handler;)V

    iput-object v4, v1, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    iput-object v2, v1, Landroid/hardware/face/FaceManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    if-eqz v2, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v7

    goto :goto_30

    :cond_2e
    const-wide/16 v7, 0x0

    :goto_30
    move-wide v11, v7

    const-string v0, "FaceManager#authenticate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v9, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v10, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v14, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v13, p5

    move/from16 v16, p6

    invoke-interface/range {v9 .. v16}, Landroid/hardware/face/IFaceService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v7

    if-eqz v3, :cond_68

    new-instance v0, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v7, v8}, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_54} :catch_57
    .catchall {:try_start_20 .. :try_end_54} :catchall_55

    goto :goto_68

    :catchall_55
    move-exception v0

    goto :goto_6c

    :catch_57
    move-exception v0

    :try_start_58
    const-string v7, "Remote exception while authenticating: "

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v8, v7}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_55

    :cond_68
    :goto_68
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_72

    :goto_6c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_70
    move-object/from16 v6, p4

    :goto_72
    return-void

    :cond_73
    move-object/from16 v6, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an authentication callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FaceManager"

    if-eqz v0, :cond_13

    const-string v0, "Detection already cancelled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    :try_start_15
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, p3, v3, v4}, Landroid/hardware/face/IFaceService;->detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J

    move-result-wide v2

    new-instance v0, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;

    invoke-direct {v0, p0, v2, v3}, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception v0

    const-string v2, "Remote exception when requesting finger detect"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V

    return-void
.end method

.method public enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V
    .registers 22

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v3, :cond_63

    const-string v4, "FaceManager"

    if-eqz v2, :cond_17

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "enrollment already canceled"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_62

    :try_start_1b
    iput-object v3, v1, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    const-string v0, "FaceManager#enroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v7, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    move v6, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v5 .. v13}, Landroid/hardware/face/IFaceService;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v5

    if-eqz v2, :cond_5a

    new-instance v0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v5, v6, v7}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {v2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_46} :catch_49
    .catchall {:try_start_1b .. :try_end_46} :catchall_47

    goto :goto_5a

    :catchall_47
    move-exception v0

    goto :goto_5e

    :catch_49
    move-exception v0

    :try_start_4a
    const-string v5, "Remote exception in enroll: "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_47

    :cond_5a
    :goto_5a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_62

    :goto_5e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_62
    :goto_62
    return-void

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an enrollment callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .registers 22

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p4

    if-eqz v3, :cond_52

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_51

    :try_start_a
    iput-object v3, v1, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    const-string v0, "FaceManager#enroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v8, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    move-object v6, p1

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Landroid/hardware/face/IFaceService;->enrollment(Landroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)J

    move-result-wide v4

    if-eqz v2, :cond_49

    new-instance v0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v4, v5, v6}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_31} :catch_34
    .catchall {:try_start_a .. :try_end_31} :catchall_32

    goto :goto_49

    :catchall_32
    move-exception v0

    goto :goto_4d

    :catch_34
    move-exception v0

    :try_start_35
    const-string v4, "FaceManager"

    const-string v5, "Remote exception in enroll: "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_49

    iget-object v4, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_32

    :cond_49
    :goto_49
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_51

    :goto_4d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_51
    :goto_51
    return-void

    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an enrollment callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enrollRemotely(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .registers 15

    if-eqz p4, :cond_58

    const-string v0, "FaceManager"

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "enrollRemotely is already canceled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_57

    :try_start_16
    iput-object p4, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    const-string v1, "FaceManager#enrollRemotely"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move v3, p1

    move-object v5, p2

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/hardware/face/IFaceService;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v1

    if-eqz p3, :cond_4f

    new-instance v3, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {p3, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_3b} :catch_3e
    .catchall {:try_start_16 .. :try_end_3b} :catchall_3c

    goto :goto_4f

    :catchall_3c
    move-exception v0

    goto :goto_53

    :catch_3e
    move-exception v1

    :try_start_3f
    const-string v2, "Remote exception in enrollRemotely: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_3c

    :cond_4f
    :goto_4f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_57

    :goto_53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_57
    :goto_57
    return-void

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extCmd(II)I
    .registers 9

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->extCmd(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IILjava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception in extcmd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method public generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 10

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_1c

    :try_start_4
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .registers 6

    nop

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v1, p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFaces(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_18
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_36

    const/4 v2, 0x0

    :try_start_1d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2f} :catch_30

    return-object v1

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_36
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFaceManager(Landroid/content/Context;Landroid/hardware/face/IFaceService;)Landroid/hardware/face/FaceManager;
    .registers 4

    new-instance v0, Landroid/hardware/face/FaceManager;

    invoke-direct {v0, p1, p2}, Landroid/hardware/face/FaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    return-object v0
.end method

.method public getFaceManger()Landroid/hardware/face/FaceManager;
    .registers 1

    return-object p0
.end method

.method public getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .registers 10

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_1c

    :try_start_4
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public getLockoutModeForUser(II)I
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-static {v3}, Landroid/hardware/face/FaceSensorProperties;->from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method public getSensorPropertiesInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_a
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public hasEnrolledTemplates()Z
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public hasEnrolledTemplates(I)Z
    .registers 6

    nop

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    const-string v1, "FaceManager"

    const-string v3, "No sensors"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_14
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_31

    :try_start_18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_2b

    return v1

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_31
    return v2
.end method

.method public isFaceFeatureEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isFaceUnlockInited()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isHardwareDetected()Z
    .registers 5

    nop

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "FaceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    const-string v1, "No sensors"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_14
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_31

    :try_start_18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_2b

    return v1

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_31
    const-string v1, "isFaceHardwareDetected(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public preInitAuthen()V
    .registers 1

    return-void
.end method

.method public remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 10

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_21

    :try_start_4
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mRemovalFace:Landroid/hardware/face/Face;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_21
    :goto_21
    return-void
.end method

.method public removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_1a

    :try_start_4
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/hardware/face/IFaceService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public resetLockout(II[B)V
    .registers 10

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_19

    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_19
    :goto_19
    return-void
.end method

.method public revokeChallenge(IIJ)V
    .registers 12

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_19

    :try_start_4
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/hardware/face/IFaceService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_19
    :goto_19
    return-void
.end method

.method public setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .registers 14

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_1e

    :try_start_4
    iput-object p5, p0, Landroid/hardware/face/FaceManager;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/face/IFaceService;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1e
    :goto_1e
    return-void
.end method
