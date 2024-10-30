##  Gameplay 框架介绍 

关于框架的理解，必然每个人还是有自己的看法。这里我们先就只讨论一下Unreal在文档中标记的GamePlay框架的内容，即：

### 1. 游戏规则 （GameMode）

AActor -> AGameModeBase -> AGameMode

同一时刻一个GameMode

接口：

	- InitGame
	- PreLogin
	- PostLogin
	- HandleStartingNewPlayer
	- RestartPlayer
	- Logout

### 2. 角色 （Character）

### 3. 控制（Controller）

### 4. 相机（Camera）

### 5. 用户界面和HUD（UserWidget & Hud）

#### UI 的可见性

- **Visible**: 默认的Widget可见性。可见，而且可以与鼠标交互。
- **Collapsed**：不可见，不占用空间。不能被点击，因为他不占空间。
- **Hidden**：不可见，但是占据空间。显而易见不可交互。
- **HitTestInvisible**：对用户可见，仅仅用作表现。鼠标点击不会看到Widget。换句话说：自身和子物体都不会被点击到。
- **SelfHitTestInvisible**：跟HitTestInvisible一样，但是不能应用于子Widget。换句话说：只有自身不会受到触摸事件，子物体还是会被点击到。

综上，可见性 性能上主要是 显示性能优化，Visible消耗肯定最大，能用SelfHitTestInvisible则用这个。

