# classes.dex

.class Landroid/app/AppOpsManager$3;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppOpsManager;

.field final synthetic val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 4

    iput-object p1, p0, Landroid/app/AppOpsManager$3;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;ZLjava/lang/String;II)V
    .registers 21

    move-object v8, p0

    instance-of v0, v8, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_12

    move-object v0, v8

    check-cast v0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    move v9, p1

    move v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-interface {v0, p1, p2, v11, v12}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    goto :goto_18

    :cond_12
    move v9, p1

    move v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    :goto_18
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_31
    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v11, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;

    move-object v2, v11

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;ZLjava/lang/String;II)V

    invoke-interface {v1, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
