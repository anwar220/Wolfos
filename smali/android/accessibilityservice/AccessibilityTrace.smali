# classes.dex

.class public interface abstract Landroid/accessibilityservice/AccessibilityTrace;
.super Ljava/lang/Object;


# static fields
.field public static final FLAGS_ACCESSIBILITY_INTERACTION_CLIENT:J = 0x40000L

.field public static final FLAGS_ACCESSIBILITY_INTERACTION_CONNECTION:J = 0x10L

.field public static final FLAGS_ACCESSIBILITY_INTERACTION_CONNECTION_CALLBACK:J = 0x20L

.field public static final FLAGS_ACCESSIBILITY_MANAGER:J = 0x4L

.field public static final FLAGS_ACCESSIBILITY_MANAGER_CLIENT:J = 0x8L

.field public static final FLAGS_ACCESSIBILITY_MANAGER_CLIENT_STATES:J = 0x44030L

.field public static final FLAGS_ACCESSIBILITY_SERVICE:J = 0x4000L

.field public static final FLAGS_ACCESSIBILITY_SERVICE_CLIENT:J = 0x2L

.field public static final FLAGS_ACCESSIBILITY_SERVICE_CONNECTION:J = 0x1L

.field public static final FLAGS_FINGERPRINT:J = 0x20000L

.field public static final FLAGS_GESTURE:J = 0x2000L

.field public static final FLAGS_INPUT_FILTER:J = 0x1000L

.field public static final FLAGS_LOGGING_ALL:J = -0x1L

.field public static final FLAGS_LOGGING_NONE:J = 0x0L

.field public static final FLAGS_MAGNIFICATION_CALLBACK:J = 0x800L

.field public static final FLAGS_PACKAGE_BROADCAST_RECEIVER:J = 0x8000L

.field public static final FLAGS_REMOTE_MAGNIFICATION_ANIMATION_CALLBACK:J = 0x40L

.field public static final FLAGS_USER_BROADCAST_RECEIVER:J = 0x10000L

.field public static final FLAGS_WINDOWS_FOR_ACCESSIBILITY_CALLBACK:J = 0x400L

.field public static final FLAGS_WINDOW_MAGNIFICATION_CONNECTION:J = 0x80L

.field public static final FLAGS_WINDOW_MAGNIFICATION_CONNECTION_CALLBACK:J = 0x100L

.field public static final FLAGS_WINDOW_MANAGER_INTERNAL:J = 0x200L

.field public static final NAME_ACCESSIBILITY_INTERACTION_CLIENT:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NAME_ACCESSIBILITY_INTERACTION_CONNECTION:Ljava/lang/String; = "IAccessibilityInteractionConnection"

.field public static final NAME_ACCESSIBILITY_INTERACTION_CONNECTION_CALLBACK:Ljava/lang/String; = "IAccessibilityInteractionConnectionCallback"

.field public static final NAME_ACCESSIBILITY_MANAGER:Ljava/lang/String; = "IAccessibilityManager"

.field public static final NAME_ACCESSIBILITY_MANAGER_CLIENT:Ljava/lang/String; = "IAccessibilityManagerClient"

.field public static final NAME_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "AccessibilityService"

.field public static final NAME_ACCESSIBILITY_SERVICE_CLIENT:Ljava/lang/String; = "IAccessibilityServiceClient"

.field public static final NAME_ACCESSIBILITY_SERVICE_CONNECTION:Ljava/lang/String; = "IAccessibilityServiceConnection"

.field public static final NAME_ALL_LOGGINGS:Ljava/lang/String; = "AllLoggings"

.field public static final NAME_FINGERPRINT:Ljava/lang/String; = "FingerprintGesture"

.field public static final NAME_GESTURE:Ljava/lang/String; = "Gesture"

.field public static final NAME_INPUT_FILTER:Ljava/lang/String; = "InputFilter"

.field public static final NAME_MAGNIFICATION_CALLBACK:Ljava/lang/String; = "MagnificationCallbacks"

.field public static final NAME_NONE:Ljava/lang/String; = "None"

.field public static final NAME_PACKAGE_BROADCAST_RECEIVER:Ljava/lang/String; = "PMBroadcastReceiver"

.field public static final NAME_REMOTE_MAGNIFICATION_ANIMATION_CALLBACK:Ljava/lang/String; = "IRemoteMagnificationAnimationCallback"

.field public static final NAME_USER_BROADCAST_RECEIVER:Ljava/lang/String; = "UserBroadcastReceiver"

.field public static final NAME_WINDOWS_FOR_ACCESSIBILITY_CALLBACK:Ljava/lang/String; = "WindowsForAccessibilityCallback"

.field public static final NAME_WINDOW_MAGNIFICATION_CONNECTION:Ljava/lang/String; = "IWindowMagnificationConnection"

.field public static final NAME_WINDOW_MAGNIFICATION_CONNECTION_CALLBACK:Ljava/lang/String; = "IWindowMagnificationConnectionCallback"

.field public static final NAME_WINDOW_MANAGER_INTERNAL:Ljava/lang/String; = "WindowManagerInternal"

.field public static final sNamesToFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IAccessibilityServiceConnection"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IAccessibilityServiceClient"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IAccessibilityManager"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IAccessibilityManagerClient"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IAccessibilityInteractionConnection"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IAccessibilityInteractionConnectionCallback"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IRemoteMagnificationAnimationCallback"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IWindowMagnificationConnection"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x100

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "IWindowMagnificationConnectionCallback"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x200

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "WindowManagerInternal"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "WindowsForAccessibilityCallback"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "MagnificationCallbacks"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "InputFilter"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Gesture"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "AccessibilityService"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "PMBroadcastReceiver"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "UserBroadcastReceiver"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "FingerprintGesture"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "AccessibilityInteractionClient"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "None"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "AllLoggings"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/accessibilityservice/AccessibilityTrace;->sNamesToFlags:Ljava/util/Map;

    return-void
.end method

.method public static getLoggingFlagsFromNames(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Landroid/accessibilityservice/AccessibilityTrace;->sNamesToFlags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v0, v4

    goto :goto_6

    :cond_20
    return-wide v0
.end method

.method public static getNamesOfLoggingTypes(J)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/accessibilityservice/AccessibilityTrace;->sNamesToFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    and-long/2addr v3, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    goto :goto_f

    :cond_36
    return-object v0
.end method


# virtual methods
.method public abstract getTraceStateForAccessibilityManagerClientState()I
.end method

.method public abstract isA11yTracingEnabled()Z
.end method

.method public abstract isA11yTracingEnabledForTypes(J)Z
.end method

.method public abstract logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logTrace(Ljava/lang/String;J)V
.end method

.method public abstract logTrace(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract startTrace(J)V
.end method

.method public abstract stopTrace()V
.end method
