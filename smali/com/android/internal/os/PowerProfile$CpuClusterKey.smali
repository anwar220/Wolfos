# classes4.dex

.class public Lcom/android/internal/os/PowerProfile$CpuClusterKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuClusterKey"
.end annotation


# instance fields
.field private final clusterPowerKey:Ljava/lang/String;

.field private final corePowerKey:Ljava/lang/String;

.field private final freqKey:Ljava/lang/String;

.field private final numCpus:I


# direct methods
.method static bridge synthetic -$$Nest$fgetclusterPowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcorePowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumCpus(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
