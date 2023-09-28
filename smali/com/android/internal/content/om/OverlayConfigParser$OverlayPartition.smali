# classes4.dex

.class Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayPartition"
.end annotation


# static fields
.field static final POLICY_ODM:Ljava/lang/String; = "odm"

.field static final POLICY_OEM:Ljava/lang/String; = "oem"

.field static final POLICY_PRODUCT:Ljava/lang/String; = "product"

.field static final POLICY_PUBLIC:Ljava/lang/String; = "public"

.field static final POLICY_SYSTEM:Ljava/lang/String; = "system"

.field static final POLICY_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field public final policy:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    return-void
.end method

.method private static policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    packed-switch v0, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine policy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    const-string/jumbo v0, "product"

    return-object v0

    :pswitch_26  #0x3
    const-string/jumbo v0, "oem"

    return-object v0

    :pswitch_2a  #0x2
    const-string/jumbo v0, "odm"

    return-object v0

    :pswitch_2e  #0x1
    const-string/jumbo v0, "vendor"

    return-object v0

    :pswitch_32  #0x0, 0x5
    const-string/jumbo v0, "system"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2e  #00000001
        :pswitch_2a  #00000002
        :pswitch_26  #00000003
        :pswitch_22  #00000004
        :pswitch_32  #00000005
    .end packed-switch
.end method
